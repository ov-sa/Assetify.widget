showCursor(true)

addEventHandler("onClientHUDRender", root, function()
    dxDrawRectangle(0, 0, ov_widget.resolution[1], ov_widget.resolution[2], tocolor(20, 20, 20, 255))

    ov_widget.text.draw({
        id = "button-header",
        text = "TEST ELEMENT",
        x = (ov_widget.resolution[1] - 300)*0.5, y = (ov_widget.resolution[2] - 200)*0.5,
        width = 300, height = 200, 
        text_align_x = "center",
        text_align_y = "center",
        color = {220, 68, 70},
        font_family = assetify.interface.createFont(":ov_components/.test/fonts/Dosis-Bold.ttf", 50),
        font_scale = 1,
        background_color = {22, 104, 220},
        border_radius = 4,
        transition = {
            color = {duration = 250, easing = "OutQuad"},
            font_scale = {duration = 350, easing = "OutQuad"}
        },
        on_hover = function(self)
            self.color = {0, 255, 0}
            self.font_scale = 0.5
        end
    })
end)
