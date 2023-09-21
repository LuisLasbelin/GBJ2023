shader_type canvas_item;

const vec2 resolucion = vec2(36, 36);
uniform sampler2D cuboSprt : filter_nearest;
const vec2 resCubo = vec2(11, 12);
uniform sampler2D flecha : filter_nearest;
uniform sampler2D selector : filter_nearest;

uniform int estadoPieza = 1; // Estado de la pieza en este orden
							 // Vacia, llena, flecha hacia arriba, flecha hacia abajo

uniform bool seleccionado = false;

const vec2 despCubos[27] = vec2[27](
	vec2(13, 12), vec2(18, 15), vec2(23, 18),
	vec2(8, 15), vec2(13, 18), vec2(18, 21),
	vec2(3, 18), vec2(8, 21), vec2(13, 24),
	
	vec2(13, 6), vec2(18, 9), vec2(23, 12),
	vec2(8, 9), vec2(13, 12), vec2(18, 15),
	vec2(3, 12), vec2(8, 15), vec2(13, 18),
	
	vec2(13, 0), vec2(18, 3), vec2(23, 6),
	vec2(8, 3), vec2(13, 6), vec2(18, 9),
	vec2(3, 6), vec2(8, 9), vec2(13, 12)
);

uniform int estadoCubo[27];

void fragment() {
	
	if(estadoPieza == 0){
		COLOR = vec4(0);
	}
	
	else if(estadoPieza == 1){
		vec2 UVP = UV * resolucion;
		vec4 col = vec4(0);
		for(int i = 0; i < 27; i++){
			
			if(estadoCubo[i] == 1){
				vec2 map = UVP - vec2(despCubos[i]); // Desplazar el cubo
				map = map / vec2(resCubo); // Proporciones correctas

				vec4 tex = texture(cuboSprt, map); // Samplear textura
				map = floor(map);
				map = abs(map);
				map = clamp(map, 0.0, 1.0); // Remapear UV

				float mask = map.x + map.y; // Juntar canales UV en una mascara
				mask = 1.0 - mask;
				tex.w *= mask;
				
				if(tex.w == 1.0){
					col.xyz = tex.xyz;
					}
					
				col.a += tex.a;
				
				}
				
				col.a = clamp(col.a, 0, 1);
				
				if(col.rgb == vec3(1, 0, 0)){
					vec2 ditherD = SCREEN_UV * vec2(160, 144);
					ditherD = floor(ditherD) - floor(ditherD / 2.0) * 2.0;
					float dither = abs(ditherD.x - ditherD.y);
					col.rgb = vec3(0.0, dither, 1.0 - dither);
				}
				
				COLOR = col;
			}
	}
	
	else if(estadoPieza == 2){
		COLOR = texture(flecha, UV);
	}
	else if(estadoPieza == 3){
		COLOR = texture(flecha, vec2(1, 1) - UV);
	}
	
	
	
	if(seleccionado == true){
		vec4 sel = texture(selector, UV);
		if(sel.a == 1.0){
			COLOR = sel;
		}
	}
}
