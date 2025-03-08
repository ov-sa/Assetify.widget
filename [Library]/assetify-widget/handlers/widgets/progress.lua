local progress = assetify.class:create("progress", false, "ov_widget")
progress.private.svg = {
    horizontal = [[
        <svg viewBox = "0 0 ]]..ov_widget.resolution[1].." "..ov_widget.resolution[2]..[[">
            <rect
                x="0px"
                y="0px"
                width="0px"
                height="0px"
                fill="#ffffff"
                stroke="#ffffff"
                stroke-width="0px"
                stroke-dasharray="0px"
                rx="0px"
                ry="0px"
            />
            <rect
                x="0px"
                y="0px"
                width="0px"
                height="0px"
                fill="#ffffff"
                stroke="#ffffff"
                stroke-width="0px"
                stroke-dasharray="0px"
                rx="0px"
                ry="0px"
            />
        </svg>
    ]],

    vertical = [[
        <svg viewBox = "0 0 ]]..ov_widget.resolution[1].." "..ov_widget.resolution[2]..[[">
            <rect
                x="0px"
                y="0px"
                width="0px"
                height="0px"
                fill="#ffffff"
                stroke="#ffffff"
                stroke-width="0px"
                stroke-dasharray="0px"
                rx="0px"
                ry="0px"
            />
            <rect
                x="0px"
                y="0px"
                width="0px"
                height="0px"
                fill="#ffffff"
                stroke="#ffffff"
                stroke-width="0px"
                stroke-dasharray="0px"
                rx="0px"
                ry="0px"
            />
        </svg>
    ]]
}

function progress.public.draw(ctx, parent)
    local id = ov_widget.resource..":progress:"..ctx.id
    local public = ov_widget.store.fetch(id, "public")
    local private = ov_widget.store.fetch(id, "private")
    private.ctx = ctx
    private.parent = parent
    if not private.parent then
        private.state.mode["hover"] = (assetify.interface.isCursorAtPosition(ov_widget.store.value(id, "x"), ov_widget.store.value(id, "y"), ov_widget.store.value(id, "width"), ov_widget.store.value(id, "height")) and true) or nil
    end
    ov_widget.store.update(id)
    if ov_widget.store.animate(id) or ov_widget.store.animate(private.parent) then
        private.type = private.type or (ctx.type and progress.private.svg[ctx.type] and ctx.type) or "horizontal"
        private.svg = private.svg or svgCreate(ov_widget.resolution[1], ov_widget.resolution[2], progress.private.svg[private.type])
        if not private.document then
            private.document = private.document or {}
            private.document.root = svgGetDocumentXML(private.svg)
            private.document.node = svgGetDocumentNodes(private.document.root)
        end
        local progress = math.max(0, math.min(1, ov_widget.store.value(id, "progress")))
        for i = 1, 2, 1 do
            xmlNodeSetAttribute(private.document.node.rect[i], "x", ov_widget.store.value(id, "x").."px")
            xmlNodeSetAttribute(private.document.node.rect[i], "y", ov_widget.store.value(id, "y").."px")
            xmlNodeSetAttribute(private.document.node.rect[i], "width", ov_widget.store.value(id, "width").."px")
            xmlNodeSetAttribute(private.document.node.rect[i], "height", ov_widget.store.value(id, "height").."px")
            xmlNodeSetAttribute(private.document.node.rect[i], "fill", stringn.format("#%.2X%.2X%.2X", table.unpack(ov_widget.store.value(id, ((i == 1) and "background_color") or "foreground_color"))))
            xmlNodeSetAttribute(private.document.node.rect[i], "stroke", stringn.format("#%.2X%.2X%.2X", table.unpack(ov_widget.store.value(id, "border_color"))))
            xmlNodeSetAttribute(private.document.node.rect[i], "stroke-width", ov_widget.store.value(id, "border_width").."px")
            xmlNodeSetAttribute(private.document.node.rect[i], "stroke-dasharray", ov_widget.store.value(id, "border_dash").."px")
            xmlNodeSetAttribute(private.document.node.rect[i], "rx", ov_widget.store.value(id, "border_radius").."px")
            xmlNodeSetAttribute(private.document.node.rect[i], "ry", ov_widget.store.value(id, "border_radius").."px")
        end
        if private.type == "horizontal" then
            xmlNodeSetAttribute(private.document.node.rect[2], "width", (ov_widget.store.value(id, "width")*progress).."px")
        elseif private.type == "vertical" then
            xmlNodeSetAttribute(private.document.node.rect[2], "height", (ov_widget.store.value(id, "height")*progress).."px")
            xmlNodeSetAttribute(private.document.node.rect[2], "y", (ov_widget.store.value(id, "y") + (ov_widget.store.value(id, "height")*(1 - progress))).."px")
        end
        svgSetDocumentXML(private.svg, private.document.root)
    end
    dxDrawImage(0, 0, ov_widget.resolution[1], ov_widget.resolution[2], private.svg)
end