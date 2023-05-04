// chromatic aberration
//---------------------------------

shader_type canvas_item;

uniform vec2 displacement = vec2(1.0, 0.0);
uniform float wave_intensity = 10.0;
uniform float water_speed = 4.0;

float random (vec2 uv) {
    return sin(TIME * water_speed) * fract(sin(dot(uv.xy,
        vec2(12.9898,78.233))) * 43758.5453123);
}

void fragment()
{
	vec2 disp = displacement * random(UV) * sin(UV.y * wave_intensity - 0.5);
	vec4 water = texture(TEXTURE, UV + vec2(TEXTURE_PIXEL_SIZE * disp), 1.0);
	
	COLOR = water;
}