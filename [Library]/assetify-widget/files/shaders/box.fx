// Variables //
float2 ov_widget.resolution = 1;
float2 position = 0.5;
float2 size = float2(300.0, 200.0);
float4 background_color = float4(1.0, 0.0, 0.0, 1.0);
float border_radius = 1;
float border_width = 1;
float4 border_color = float4(1.0, 1, 1.0, 1);

// Inputs //
struct PSInput {
    float4 Position : POSITION0;
    float2 TexCoord : TEXCOORD0;
};

// Utils //
float Box(float2 center, float2 size, float border_size, float border_radius) {
    float2 distance = abs(center) - size;
    if (border_radius <= 0.0) return length(max(distance, 0.0)) + min(max(distance.x, distance.y), 0);
    border_size = max(border_size, 1);
    border_radius = max(border_size*2, border_radius);
    return length(max(distance + border_radius, 0)) - border_radius;
}

// Handlers //
float4 PSHandler(PSInput PS) : COLOR0 {
    PS.TexCoord *= ov_widget.resolution;
    float border_size = ceil(border_width);
    float distance = Box(position - PS.TexCoord, size*0.5, border_size, border_radius);
    float border_value = 1.0 - lerp(-1, 1, border_size <= 0 ? 1 : abs(distance) - border_size*0.5);
    return distance > 0 ? 0 : lerp(background_color, border_color, border_value > 0 ? 1 : 0);
}

// Techniques //
technique Shader_Rectangle {
    pass P0 {
        SrcBlendAlpha = One;
        DestBlendAlpha = InvSrcAlpha;
        SeparateAlphaBlendEnable = true;
        PixelShader = compile ps_2_0 PSHandler();
    }
}

technique fallback {
    pass P0 {}
}