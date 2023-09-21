shader_type canvas_item;

uniform uvec2 resolucion = uvec2(96, 96);
uniform sampler2D cuboSprt : filter_nearest;
uniform uvec2 resolucionCubo = uvec2(23, 26);

uniform float velScan = 4.0;

const uvec2 despCubos[27] = uvec2[27](
		uvec2(41, 40), uvec2(52, 46), uvec2(63, 52),
		uvec2(30, 46), uvec2(41, 52), uvec2(52, 58),
		uvec2(19, 52), uvec2(30, 58), uvec2(41, 64),
		
		uvec2(41, 26), uvec2(52, 32), uvec2(63, 38),
		uvec2(30, 32), uvec2(41, 38), uvec2(52, 44),
		uvec2(19, 38), uvec2(30, 44), uvec2(41, 50),
		
		uvec2(41, 12), uvec2(52, 18), uvec2(63, 24),
		uvec2(30, 18), uvec2(41, 24), uvec2(52, 30),
		uvec2(19, 24), uvec2(30, 30), uvec2(41, 36)
);

uniform int estado[27];

void fragment() {
	vec2 UVP = UV * vec2(resolucion); // Multiplicar para trabajar por pixel de textura
	vec4 col = vec4(0, 0, 0, 0); // Color inicial del cubo
	
	// Iterar por cada cubo
	for(int i = 0; i < 27; i++){
		if(estado[i] == 1){
			vec2 map = UVP - vec2(despCubos[i]); // Desplazar el cubo
			map = map / vec2(resolucionCubo); // Proporciones correctas
		
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
			
			if(col.xyz == vec3(1.0, 0.0, 0.0)){
				vec2 ditherD = SCREEN_UV * vec2(160, 144);
				ditherD = floor(ditherD) - floor(ditherD / 2.0) * 2.0;
				float dither = abs(ditherD.x - ditherD.y);
				col.xyz = vec3(0.0, dither, 1.0 - dither);
			}
			
			col.w += tex.w;
		}
		
		else if (estado[i] == 2){
			vec2 map = UVP - vec2(despCubos[i]); // Desplazar el cubo
			map = map / vec2(resolucionCubo); // Proporciones correctas
		
			vec4 tex = texture(cuboSprt, map); // Samplear textura
		
			map = floor(map);
			map = abs(map);
			map = clamp(map, 0.0, 1.0); // Remapear UV
			
			float mask = map.x + map.y; // Juntar canales UV en una mascara
			mask = 1.0 - mask;
			tex.w *= mask;
			
			//Scanlines seleccion
			float scanlines = SCREEN_UV.y * 144.0;
			scanlines += TIME * velScan;
			scanlines = floor(scanlines) - (floor(scanlines / 2.0) * 2.0);
			
			if(tex.w * scanlines == 1.0){
				col.xyz = vec3(0.0, 0.0, 0.0);
			}
			
			col.w += tex.w * scanlines;
		}
	}
	
	col.a = clamp(col.a, 0, 1); // Limitar alfa a 1
	
	COLOR = col;
}
