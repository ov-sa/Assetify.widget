function template()
    ov_widget.button.draw("", {
        id = "ui-1",
        x = 100, y = 100,
        width = 113, height = 24, 
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

    --[[
    drawRectangle({
        id = "ui-2",
        x = 100 + 113 + 25, y = 100,
        width = 24, height = 24, 
        background_color = {22, 104, 220, 255},
        border_radius = 2,
        border_width = 0,
        border_color = {255, 255, 255, 255},
        transition = {
            border_radius = {duration = 0.2, easing = "Linear"}
        },
        on_hover = function(self)
            self.border_radius = 5
        end
    })

    drawRectangle({
        id = "ui-3",
        x = 100, y = 100 + 24 + 25,
        width = 129, height = 32,
        background_color = {22, 104, 220, 255},
        border_radius = 2,
        border_width = 0,
        border_color = {255, 255, 255, 255},
        transition = {
            border_radius = {duration = 0.2, easing = "Linear"}
        },
        on_hover = function(self)
            self.border_radius = 5
        end
    })

    drawRectangle({
        id = "ui-4",
        x = 100 + 129 + 25, y = 100 + 24 + 25,
        width = 32, height = 32,
        background_color = {22, 104, 220, 255},
        border_radius = 2,
        border_width = 0,
        border_color = {255, 255, 255, 255},
        transition = {
            border_radius = {duration = 0.2, easing = "Linear"}
        },
        on_hover = function(self)
            self.border_radius = 5
        end
    })

    drawRectangle({
        id = "ui-5",
        x = 100, y = 100 + 24 + 25 + 32 + 25,
        width = 143, height = 40,
        background_color = {22, 104, 220, 255},
        border_radius = 2,
        border_width = 0,
        border_color = {255, 255, 255, 255},
        transition = {
            border_radius = {duration = 0.2, easing = "Linear"}
        },
        on_hover = function(self)
            self.border_radius = 5
        end
    })

    drawRectangle({
        id = "ui-6",
        x = 100 + 143 + 25, y = 100 + 24 + 25 + 32 + 25,
        width = 40, height = 40,
        background_color = {22, 104, 220, 255},
        border_radius = 2,
        border_width = 0,
        border_color = {255, 255, 255, 255},
        transition = {
            border_radius = {duration = 0.2, easing = "Linear"}
        },
        on_hover = function(self)
            self.border_radius = 5
        end
    })

    drawRectangle(300 + 100, 100, 113, 24, {20, 20, 20, 255}, 2, 2, {66, 66, 66, 255})
    drawRectangle(300 + 100 + 113 + 25, 100, 24, 24, {20, 20, 20, 255}, 2, 2, {66, 66, 66, 255})

    drawRectangle(300 + 100, 100 + 24 + 25, 129, 32, {20, 20, 20, 255}, 2, 2, {66, 66, 66, 255})
    drawRectangle(300 + 100 + 129 + 25, 100 + 24 + 25, 32, 32, {20, 20, 20, 255}, 2, 2, {66, 66, 66, 255})

    drawRectangle(300 + 100, 100 + 24 + 25 + 32 + 25, 143, 40, {20, 20, 20, 255}, 2, 2, {66, 66, 66, 255})
    drawRectangle(300 + 100 + 143 + 25, 100 + 24 + 25 + 32 + 25, 40, 40, {20, 20, 20, 255}, 2, 2, {66, 66, 66, 255})


    drawRectangle(700, 100, 113, 24, {220, 68, 70, 255}, 2, 0, {255, 255, 255, 255})
    drawRectangle(700 + 113 + 25, 100, 24, 24, {220, 68, 70, 255}, 2, 0, {255, 255, 255, 255})

    drawRectangle(700, 100 + 24 + 25, 129, 32, {220, 68, 70, 255}, 2, 0, {255, 255, 255, 255})
    drawRectangle(700 + 129 + 25, 100 + 24 + 25, 32, 32, {220, 68, 70, 255}, 2, 0, {255, 255, 255, 255})

    drawRectangle(700, 100 + 24 + 25 + 32 + 25, 143, 40, {220, 68, 70, 255}, 2, 0, {255, 255, 255, 255})
    drawRectangle(700 + 143 + 25, 100 + 24 + 25 + 32 + 25, 40, 40, {220, 68, 70, 255}, 2, 0, {255, 255, 255, 255})



    drawRectangle(900 + 100, 100, 113, 24, {20, 20, 20, 255}, 2, 2, {220, 68, 70, 255})
    drawRectangle(900 + 100 + 113 + 25, 100, 24, 24, {20, 20, 20, 255}, 2, 2, {220, 68, 70, 255})

    drawRectangle(900 + 100, 100 + 24 + 25, 129, 32, {20, 20, 20, 255}, 2, 2, {220, 68, 70, 255})
    drawRectangle(900 + 100 + 129 + 25, 100 + 24 + 25, 32, 32, {20, 20, 20, 255}, 2, 2, {220, 68, 70, 255})

    drawRectangle(900 + 100, 100 + 24 + 25 + 32 + 25, 143, 40, {20, 20, 20, 255}, 2, 2, {220, 68, 70, 255})
    drawRectangle(900 + 100 + 143 + 25, 100 + 24 + 25 + 32 + 25, 40, 40, {20, 20, 20, 255}, 2, 2, {220, 68, 70, 255})



    drawRectangle(100, 100 + 24 + 25 + 32 + 25 + 40 + 25, 478, 138, {17, 26, 44, 255}, 8, 2, {21, 50, 91, 255})
    drawRectangle(100, 100 + 24 + 25 + 32 + 25 + 40 + 25 + 138 + 25, 478, 138, {31, 31, 31, 255}, 8, 0, {21, 50, 91, 255})
    ]]
end