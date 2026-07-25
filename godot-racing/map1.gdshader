shader_type spatial;
uniform sampler2D set_texture : source_color;
void fragment(){
		ALBEDO = texture(set_texture, UV).rgb;
		ALPHA = 0.9;
}