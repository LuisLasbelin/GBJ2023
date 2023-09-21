shader_type canvas_item;

uniform sampler2D sprite : filter_nearest;
uniform vec2 despLetra = vec2(0, 0); // Se usa para mover el selector
const vec2 despBase = vec2(0, 11); // NO TOCAR


void fragment() {
	vec2 UVP = UV * vec2(160, 80);
	float despAdd = 0.0;

	if(despLetra.y == 1.0){
		despAdd = 8.0;
	}

	else if(despLetra.y == 2.0){
		despAdd = 8.0;
		/*if(despLetra.y == 2.0 && despLetra.x == 7.0){
			
		}*/
	}

	UVP -= despBase + (despLetra * vec2(16.0, 23.0)) + vec2(despAdd, 0.0);
	UVP /= 16.0;
	float mask = abs(floor(UVP.x)) + abs(floor(UVP.y));
	mask = 1.0 - abs(mask);

	COLOR = texture(sprite, UVP);
	COLOR.a *= mask;
	
}
