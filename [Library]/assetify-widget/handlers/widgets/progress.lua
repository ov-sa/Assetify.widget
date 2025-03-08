local progress = assetify.class:create("progress", false, "ov_widget")
progress.private.svg = [[
    <svg viewBox = "0 0 ]]..ov_widget.resolution[1].." "..ov_widget.resolution[2]..[[">
        <rect
            x="0px"
            y="0px"
            width="0px"
            height="0px"
            fill="#ffffff"
            stroke="#ffffff"
            stroke-width="0px"
            stroke-dasharray="25px"
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
            stroke-dasharray="25px"
            rx="0px"
            ry="0px"
        />
    </svg>
]]

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
    if ov_widget.store.animate(id) or ov_widget.store.animate(private.parent) then end
    ov_widget.box.draw(ctx, id)
end