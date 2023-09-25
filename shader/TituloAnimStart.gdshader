shader_type canvas_item;

void fragment() {
	vec2 UVP = vec2(UV.x * 160.0, UV.y * 144.0);
	float dist = distance(vec2(80.0, 120.0), UVP);
	float t1 = (TIME - 4.0) / 0.2;

	if(TIME <= 4.0){
		COLOR.a = 0.0;
	}

	// Circulo
	else if(TIME > 4.0 && TIME < 4.3){
		t1 = floor(t1);
		t1 = clamp(t1, 0.0, 1.0);
		dist = mix(dist - 3.0, dist - 20.0, t1);
		dist = clamp(dist, 0.0, 1.0);
		dist = 1.0 - dist;
		dist /= dist;

		COLOR.rgb = vec3(0);
		COLOR.a = clamp(dist, 0.0, 1.0);
	}

	// Linea 1
	else if(TIME > 4.3 && TIME < 4.5){
		float linea = UV.y * 144.0;
		linea -= 117.0;
		linea = clamp(linea, 0.0, 1.0) - clamp(linea - 5.0, 0.0, 1.0);
		linea = clamp(linea, 0.0, 1.0);
		linea /= linea;

		float t = TIME * 20.0;
		float stagger = floor(t) - floor(t / 2.0) * 2.0;
		stagger = clamp(stagger, 0.0, 1.0);

		COLOR.rgb = vec3(0);
		COLOR.a += linea * stagger;
	}

	// Linea 2
	else if(TIME > 4.5 && TIME < 4.7){
		float linea = UV.y * 144.0;
		linea -= 119.0;
		linea = clamp(linea, 0.0, 1.0) - clamp(linea - 1.0, 0.0, 1.0);
		linea = clamp(linea, 0.0, 1.0);
		linea /= linea;
		linea = clamp(linea, 0.0, 1.0);

		float t = TIME * 20.0;
		float stagger = floor(t) - floor(t / 2.0) * 2.0;
		stagger = clamp(stagger, 0.0, 1.0);

		COLOR.rgb = vec3(0);
		COLOR.a += linea * stagger;
	}
	/*else{
		float t = TIME * 8.0;
		float stagger = floor(t) - floor(t / 2.0) * 2.0;
		stagger = clamp(stagger, 0.0, 1.0);
		COLOR.rgb = vec3(0);
		COLOR.a = stagger;
	}*/
	else{
		vec2 UVP = vec2(UV.x * 160.0, UV.y * 144.0);
		float mask = (clamp(UVP.x - 61.0, 0.0, 1.0) - clamp(UVP.x - 65.0, 0.0, 1.0))
					* (clamp(UVP.y - 117.0, 0.0, 1.0) - clamp(UVP.y - 122.0, 0.0, 1.0));
		mask /= mask;
		mask = clamp(mask, 0.0, 1.0);
		mask *= floor(TIME) - floor(TIME / 2.0) * 2.0;
		mask = 1.0 - mask;
		//COLOR.rgb = vec3(COLOR.a * 0.5 + mask * 0.5);
		COLOR.a *= mask;
	}


}
