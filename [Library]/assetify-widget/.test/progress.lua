addEventHandler("onClientHUDRender", root, function()
    -->> Row: Header <<--
    ov_widget.text.draw({
        id = "progress-header",
        text = "<Progress/>",
        x = 100, y = 100 + 24 + 25 + 32 + 25 + 125 - 55,
        width = 113, height = 50, 
        text_align_x = "left",
        color = {220, 68, 70},
        font_family = assetify.interface.createFont(":ov_components/.test/fonts/Dosis-Bold.ttf", 18),
        font_scale = 1,
        background_color = {22, 104, 220},
        border_radius = 4,
        transition = {
            color = {duration = 250, easing = "OutQuad"}
        },
        on_hover = function(self)
            self.color = {22, 104, 220}
        end
    })



    -->> Row: 1 <<--
    ov_widget.progress.draw({
        id = "progress#1-1",
        icon = "search",
        x = 100, y = 100 + 24 + 25 + 32 + 25 + 125,
        width = 201, height = 8, 
        font_family = "default-bold",
        background_color = {220, 68, 70},
        border_radius = 4,
        transition = {
            color = {duration = 250, easing = "OutQuad"},
            background_color = {duration = 250, easing = "OutQuad"}
        }
    })
end)