shader_type canvas_item;

uniform float posicion = 0.0;
uniform float velocidad = 1.5;
const vec2 dimensiones = vec2(48.0, 16.0);

void fragment() {
	
	vec2 UVP = UV * dimensiones;
	float mask = (UVP.x - posicion * 16.0) / 14.0;
	mask = 1.0 - abs(floor(mask));
	
	mask = clamp(mask, 0.0, 1.0);
	mask *= 1.0 - abs(floor( (UVP.y - 14.0) / 2.0) );
	
	mask = clamp(mask, 0.0, 1.0);
	
	float tiempo = TIME * velocidad;
	mask *= floor(tiempo) - (floor(tiempo / 2.0) * 2.0);
	
	COLOR.rgb = vec3(0, 0, 1);
	COLOR.a = mask;
}
