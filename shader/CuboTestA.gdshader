shader_type canvas_item;

uniform sampler2D mockupRef : filter_nearest;
uniform bool mockupCheck = false;

uniform vec3 colorLuz : source_color = vec3(1, 0.909, 0.745);
uniform vec3 colorSombra : source_color = vec3(0.552, 0.619, 0.745);
uniform vec3 colorLinea : source_color = vec3(0.376, 0.09, 0.113);
uniform vec3 colorFondo : source_color = vec3(0.788, 0.831, 0.701);

uniform vec2 resolucion = vec2(160, 144);
uniform sampler2D cubito : filter_nearest, repeat_disable;
uniform vec2 cubitoDimensiones = vec2(23, 26);

const uvec2 desplazamientos[27] = uvec2[27](
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

uniform bool activo[27];

void fragment() {
	vec2 UVP = UV * resolucion; // Multiplicar para trabajar por pixel de textura
	vec4 col = vec4(0, 0, 0, 0); // Color inicial del cubo
	for(int i = 0; i < 27; i++){
		if(activo[i] == true){
			vec2 map = UVP - vec2(desplazamientos[i]); // Desplazar el cubo
			map = map / cubitoDimensiones; // Proporciones correctas
		
			vec4 tex = texture(cubito, map); // Samplear textura
		
			map = floor(map);
			map = abs(map);
			map = clamp(map, 0.0, 1.0); // Remapear UV
			
			float mask = map.x + map.y; // Juntar canales UV en una mascara
			mask = 1.0 - mask;
			tex.w *= mask;
		
			if(tex.w == 1.0){
				col.xyz = tex.xyz;
			}
		
			col.w += tex.w;
		}
		
	}
	
	col.a = clamp(col.a, 0, 1); // Limitar alfa a 1
	
	// Componer el color
	vec4 comp = vec4(0, 0, 0, 1);
	if(col.r == 1.0){
		float dither = floor(UVP.x) - (floor(UVP.x / 2.0) * 2.0);
		dither = dither - (floor(UVP.y) - (floor((UVP.y) / 2.0) * 2.0));
		//dither = clamp(dither, 0.0, 1.0);
		dither = abs(dither);
		comp.xyz = mix(colorLuz, colorSombra, dither);
	}
	else if(col.g == 1.0){
		comp.xyz = colorLuz;
	}
	else if(col.b == 1.0){
		comp.xyz = colorSombra;
	}
	else if(col.a == 1.0){
		comp.xyz = colorLinea;
	}
	else{
		comp.xyz = colorFondo;
	}
	
	if(mockupCheck == false){
		COLOR = comp;
	}
	else{
		COLOR = texture(mockupRef, UV);
	}
	
}
