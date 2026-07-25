shader_type canvas_item;
uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;
uniform float filter_intensity;
uniform float pixel_depth;
void fragment() {
	vec3 c = textureLod(screen_texture, vec2(floor(SCREEN_UV.x*pixel_depth)/pixel_depth, floor(SCREEN_UV.y*pixel_depth)/pixel_depth), 0.0).rgb;
	COLOR =vec4(mix(c.rgb,vec3(0.2,0.5,0.1),filter_intensity),1.0);
}