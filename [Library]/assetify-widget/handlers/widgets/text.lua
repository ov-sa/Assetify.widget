local text = assetify.class:create("text", false, "ov_widget")

function text.public.draw(text, ctx, parent)
    local id = ov_widget.resource..":text:"..ctx.id
    local public = ov_widget.store.fetch(id, "public")
    local private = ov_widget.store.fetch(id, "private")
    private.ctx = ctx
    private.parent = parent
    if not private.parent then
        private.state.mode["hover"] = (assetify.interface.isCursorAtPosition(ov_widget.store.value(id, "x"), ov_widget.store.value(id, "y"), ov_widget.store.value(id, "width"), ov_widget.store.value(id, "height")) and true) or nil
    end
    ov_widget.store.update(id)
    if ov_widget.store.animate(id) or ov_widget.store.animate(private.parent) then end
    dxDrawText(text, ov_widget.store.value(id, "x"), ov_widget.store.value(id, "y"), ov_widget.store.value(id, "x") + ov_widget.store.value(id, "width"), ov_widget.store.value(id, "y") + ov_widget.store.value(id, "height"), RGBToColor(ov_widget.store.value(id, "color")), 1, "pricedown", "center", "center")
end