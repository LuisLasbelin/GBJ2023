shader_type canvas_item;

uniform sampler2D screenTex : hint_screen_texture;

uniform vec3 colorLinea : source_color;
uniform vec3 colorLuz : source_color;
uniform vec3 colorSombra : source_color;
uniform vec3 colorFondo : source_color;

void fragment() {
	vec3 pantalla = texture(screenTex, SCREEN_UV).xyz;
	if(pantalla == vec3(0, 0, 0)){
		COLOR.rgb = colorLinea;
	}
	else if (pantalla == vec3(0, 1, 0)){
		COLOR.rgb = colorLuz;
	}
	else if (pantalla == vec3(0, 0, 1)){
		COLOR.rgb = colorSombra;
	}
	else {
		COLOR.rgb = colorFondo;
	}
	
	
	COLOR.a = 1.0;
}
