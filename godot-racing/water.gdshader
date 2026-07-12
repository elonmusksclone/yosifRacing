shader_type spatial;
render_mode specular_toon;
uniform sampler2D normalmap;
varying vec2 tex_position;
void vertex() {
	tex_position = VERTEX.xz;
	VERTEX.y = (cos(1.0*(TIME+VERTEX.x))*sin(1.0*(TIME+VERTEX.z)))/2.0+VERTEX.y;
}
void fragment() {
	ALBEDO = vec3(0.1,0.3,0.5);
	METALLIC = 0.0;
	ROUGHNESS = 0.01;
	RIM = 0.2;
	NORMAL_MAP = texture(normalmap, tex_position).xyz;
}
