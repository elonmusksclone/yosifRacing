shader_type spatial;

uniform sampler2D set_texture : source_color;
void vertex() {
	VERTEX.y = abs(sin(TIME))+VERTEX.y/3.0*(abs(sin(TIME))+1.0);;
	VERTEX.x = VERTEX.x/(abs(sin(TIME))+1.0);
	VERTEX.z = VERTEX.z/(abs(sin(TIME))+1.0);
}
void fragment() {
	METALLIC = 3.0;
	ALBEDO = texture(set_texture, UV).rgb + vec3(sin(TIME)/3.0, cos(TIME)/5.0, 0);
}