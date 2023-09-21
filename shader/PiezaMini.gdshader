shader_type canvas_item;

uniform sampler2D sprite : filter_nearest;
const vec2 resSprite = vec2(7, 9);
const vec2 desplazamientos[27] = vec2[27](
	vec2(13, 16), vec2(16, 19), vec2(19, 22),
	vec2(10, 19), vec2(13, 22), vec2(16, 25),
	vec2(7, 22), vec2(10, 25), vec2(13, 28),
	
	vec2(13, 12), vec2(16, 15), vec2(19, 18),
	vec2(10, 15), vec2(13, 18), vec2(16, 21),
	vec2(7, 18), vec2(10, 21), vec2(13, 24),
	
	vec2(13, 8), vec2(16, 11), vec2(19, 14),
	vec2(10, 11), vec2(13, 14), vec2(16, 17),
	vec2(7, 14), vec2(10, 17), vec2(13, 20)
);

uniform int estado[27];

void fragment() {
	vec2 UVP = UV * 48.0;
	vec4 col = vec4(0);
	for(int i = 0; i < 27; i++){
		if(estado[i] == 1){
			vec2 map = UVP - desplazamientos[i] - vec2(10, 8);
			map = map / resSprite;
			vec4 tex = texture(sprite, map);

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
	}

	col.a = clamp(col.a, 0.0, 1.0);
	COLOR = col;

}
