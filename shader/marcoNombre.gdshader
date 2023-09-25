shader_type canvas_item;


void fragment() {

	float full = COLOR.r + COLOR.g + COLOR.b;
	full = floor(full * 2.0) / 2.0;

	float mask = COLOR.r + COLOR.g + COLOR.b;
	mask = floor(mask);

	float ciclo = floor(COLOR.r + 0.5) * 3.0
				+ floor(COLOR.g + 0.5) * 2.0
				+ floor(COLOR.b + 0.5);

	ciclo = (ciclo / 3.0 + mask) * 3.0;


	ciclo = ciclo + floor(TIME * 6.0) - floor(TIME) * 6.0;
	ciclo = ciclo - floor(ciclo / 6.0) * 6.0;

	ciclo = clamp(ciclo - 3.0, 0.0, 1.0);


	COLOR.rgb = vec3(0, 1, 0);
	COLOR.a *= ciclo;

	//COLOR.r = ciclo;
	//COLOR.gb = COLOR.rr;
	
	
	/*
	float ciclo = floor(COLOR.r + 0.5) * 3.0
				+ floor(COLOR.g + 0.5) * 2.0
				+ floor(COLOR.b + 0.5) * 1.0;
	
	
	ciclo = ciclo + floor(TIME * 3.0) - floor(TIME) * 3.0;
	ciclo = ciclo - floor(ciclo / 3.0) * 3.0;
	
	ciclo = clamp(ciclo, 0.0, 1.0);
	
	COLOR.rgb = vec3(0, 1, 0);
	//COLOR.a *= ciclo;
	//COLOR.r = ciclo / 3.0;
	//COLOR.gb = COLOR.rr;
	
	COLOR.r = ciclo;
	COLOR.gb = COLOR.rr;
	*/
}
