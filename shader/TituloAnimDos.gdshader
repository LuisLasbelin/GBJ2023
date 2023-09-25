shader_type canvas_item;

uniform sampler2D sprite : filter_nearest;
uniform float espera = 2.5;
uniform float t : hint_range(0.0, 150.0);

const vec2 areas[8] = vec2[8](
	vec2( 9.0, 27.0), // A
	vec2( 27.0, 43.0), // S
	vec2( 43.0, 60.0), // S
	vec2( 60.0, 78.0), // E
	vec2( 78.0, 107.0), // M
	vec2( 107.0, 125.0), // B
	vec2( 125.0, 143.0), // L
	vec2( 143.0, 160.0)  // Y
);

void fragment() {

	vec4 col = vec4(0);

	for(int i = 0; i < 8; i++){

		float tiempo = TIME - espera - (0.07 * float(i));
		tiempo *= 5.0;
		float bBack = tiempo;
		tiempo = clamp(tiempo, 0.0, 1.0);
		tiempo = 1.0 - tiempo;
		tiempo = 1.0 - pow(tiempo, 1.0);

		float animacion = mix(-150.0, 2.0, tiempo);
		if(animacion == 2.0){
			animacion = 0.0;
		}


		float desp = UV.x * 160.0 + animacion; // Desplazamiento
		desp = clamp(desp, areas[i].x, areas[i].y); // Limite
		float mask = clamp(desp - 9.0, 0.0, 1.0); // Mascara
		mask = mask * (1.0 - mask);
		mask /= mask;
		
		vec4 tex = texture(sprite, vec2(desp / 160.0, UV.y));
		
		col.rgb += tex.rgb;
		col.a += tex.a;
	}


	COLOR = col;
	//COLOR.r = mask;
	//COLOR.gb = COLOR.rr;
	//COLOR.a = 1.0;

	if(TIME >= 3.0){

		float lineaY = UV.y * 144.0;
		lineaY -= 102.0;
		lineaY = clamp(lineaY, 0.0, 1.0);
		lineaY *= 1.0 - lineaY;
		lineaY /= lineaY;

		float lineaX = UV.x * 160.0;
		lineaX -= 10.0;
		lineaX = clamp(lineaX, 0.0, 1.0) - clamp(lineaX - 147.0, 0.0, 1.0);
		lineaX = clamp(lineaX, 0.0, 1.0);
		lineaX /= lineaX;

		float dist = distance(78.5, UV.x * 160.0);

		float tiempoA = TIME - 3.0;
		tiempoA = clamp(tiempoA, 0.0, 1.0);
		float distA = mix(dist, dist - 1000.0, tiempoA);
		distA = clamp(1.0 - distA, 0.0, 1.0);

		float tiempoB = TIME - 3.1;
		tiempoB = clamp(tiempoB, 0.0, 1.0);
		float distB = mix(dist, dist - 1000.0, tiempoB);
		distB = clamp(1.0 - distB, 0.0, 1.0);

		float tiempoC = TIME - 3.2;
		tiempoC = clamp(tiempoC, 0.0, 1.0);
		tiempoC = 1.0 - pow(1.0 - tiempoC, 4.0);
		float distC = mix(dist, dist - 80.0, tiempoC);
		distC = clamp(1.0 - distC, 0.0, 1.0);

		float lineaFinal = (distA - distB + distC) * lineaX * lineaY;

		COLOR.rgb = vec3(0);
		COLOR.a += clamp(lineaFinal, 0.0, 1.0);
	}
}
