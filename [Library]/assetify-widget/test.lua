showCursor(true)

addEventHandler("onClientHUDRender", root, function()
    dxDrawRectangle(0, 0, ov_widget.resolution[1], ov_widget.resolution[2], tocolor(20, 20, 20, 255))

    --[[
    ov_widget.button.draw("Test Button", {
        id = "ui-1",
        x = 100, y = 100,
        width = 500, height = 500, 
        color = {255, 255, 255},
        background_color = {22, 104, 220},
        border_radius = 2,
        border_width = 0,
        border_dash = 0,
        border_color = {255, 0, 0},
        transition = {
            width = {duration = 250, easing = "OutQuad"},
            height = {duration = 250, easing = "OutQuad"},
            background_color = {duration = 250, easing = "OutQuad"},
            border_radius = {duration = 250, easing = "OutQuad"},
            border_width = {duration = 250, easing = "OutQuad"},
            border_color = {duration = 250, easing = "OutQuad"}
        },
        on_hover = function(self)
            self.width = 700
            self.height = 700
            self.color = {0, 255, 0}
            self.background_color = {255, 0, 0}
            self.border_radius = 100
            self.border_width = 2
            self.border_dash = 25
            self.border_color = {22, 104, 220}
        end
    })
    ]]

    template()

end)
