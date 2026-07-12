shader_type spatial;

uniform sampler2D set_texture : source_color;
void vertex() {
	VERTEX.y = 2.0*sin(4.0*(1.0/(1.0-pow(2.718,-abs(cos(TIME))+0.5))))+ VERTEX.y;
	
}
void fragment() {
	METALLIC = 3.0;
	ALBEDO = texture(set_texture, UV).rgb + vec3(sin(TIME)/3.0, cos(TIME)/5.0, 0);
}