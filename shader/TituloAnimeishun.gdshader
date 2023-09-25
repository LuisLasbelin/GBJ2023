shader_type canvas_item;

uniform float esperaInicial = 1.0;
uniform float test;

uniform sampler2D spriteC1 : filter_nearest;
uniform float esperaClicC1 = 0.5;
uniform sampler2D spriteU : filter_nearest;
uniform sampler2D spriteB : filter_nearest;
uniform sampler2D spriteI : filter_nearest;
uniform sampler2D spriteC2 : filter_nearest;

void fragment() {
	
	vec4 col = vec4(0);
	
	// Titulo inicial
	// Pieza C1
	
	float eC1s = esperaInicial; // Espera escaner
	float eC1c = esperaInicial + esperaClicC1; // Espera click
	// Animacion clic
	float animClicC1 = ((TIME - eC1c) * 16.0) / 144.0; // velocidad
	animClicC1 -= 2.0 / 144.0; // movimiento
	animClicC1 = clamp(animClicC1, -2.0 / 144.0, 0.0); // bloquear movimiento

	if(TIME >= eC1s && TIME < eC1c){
		col.rgb += vec3(0);

		float scanlines = SCREEN_UV.y * 144.0;
		scanlines += TIME * 4.0;
		scanlines = floor(scanlines) - (floor(scanlines / 2.0) * 2.0);

		col.a += texture(spriteC1, UV).a * scanlines;
	}

	else if(TIME >= eC1c){
		vec4 tex = texture(spriteC1, UV + vec2(0, animClicC1));

		if(tex.a == 1.0){
			col += tex;
		}

		vec2 ditherD = SCREEN_UV * vec2(160, 144);
		ditherD = floor(ditherD) - floor(ditherD / 2.0) * 2.0;
		float dither = abs(ditherD.x - ditherD.y);

		//COLOR.a *= scanlines;
	}

	else{
		COLOR.a = 0.0;
	}
	
	//COLOR = texture(spriteC1, UV + vec2(0, animacion));
	
	/*
	float t = floor(TIME * 6.0) / 144.0;
	float a = UV.x + (UV.y * 144.0 / 160.0- t);
	a = sin(a * 40.0);
	a = floor(a + 0.0075);
	COLOR.rgb = vec3(a);*/
	
	// Pieza U
	
	float eUs = esperaInicial + esperaClicC1; // Espera escaner
	float eUc = esperaInicial + esperaClicC1 * 1.5; // Espera click
	
	float animClicU = ((TIME - eUc) * 16.0) / 144.0; // velocidad
	animClicU -= 2.0 / 144.0; // movimiento
	animClicU = clamp(animClicU, -2.0 / 144.0, 0.0); // bloquear movimiento
	
	if(TIME >= eUs && TIME < eUc){
		col.rgb += vec3(0);

		float scanlines = SCREEN_UV.y * 144.0;
		scanlines += TIME * 4.0;
		scanlines = floor(scanlines) - (floor(scanlines / 2.0) * 2.0);

		col.a += texture(spriteU, UV).a * scanlines;
	}

	else if(TIME >= eUc){
		vec4 tex = texture(spriteU, UV + vec2(0, animClicU));

		if(tex.a == 1.0){
			col += tex;
		}
	}


	// Pieza B

	float eBs = esperaInicial + esperaClicC1 * 1.5; // Espera escaner
	float eBc = esperaInicial + esperaClicC1 * 2.0; // Espera click
	
	float animClicB = ((TIME - eBc) * 16.0) / 144.0; // velocidad
	animClicB -= 2.0 / 144.0; // movimiento
	animClicB = clamp(animClicB, -2.0 / 144.0, 0.0); // bloquear movimiento
	
	if(TIME >= eBs && TIME < eBc){
		col.rgb += vec3(0);

		float scanlines = SCREEN_UV.y * 144.0;
		scanlines += TIME * 4.0;
		scanlines = floor(scanlines) - (floor(scanlines / 2.0) * 2.0);

		col.a += texture(spriteB, UV).a * scanlines;
	}
	
	else if(TIME >= eUc){
		vec4 tex = texture(spriteB, UV + vec2(0, animClicB));

		if(tex.a == 1.0){
			col += tex;
		}
	}


	// Pieza I

	float eIs = esperaInicial + esperaClicC1 * 2.0; // Espera escaner
	float eIc = esperaInicial + esperaClicC1 * 2.5; // Espera click
	
	float animClicI = ((TIME - eIc) * 16.0) / 144.0; // velocidad
	animClicI -= 2.0 / 144.0; // movimiento
	animClicI = clamp(animClicI, -2.0 / 144.0, 0.0); // bloquear movimiento
	
	if(TIME >= eIs && TIME < eIc){
		col.rgb += vec3(0);

		float scanlines = SCREEN_UV.y * 144.0;
		scanlines += TIME * 4.0;
		scanlines = floor(scanlines) - (floor(scanlines / 2.0) * 2.0);

		col.a += texture(spriteI, UV).a * scanlines;
	}
	
	else if(TIME >= eIc){
		vec4 tex = texture(spriteI, UV + vec2(0, animClicI));

		if(tex.a == 1.0){
			col += tex;
		}
	}


	// Pieza C2

	float eC2s = esperaInicial + esperaClicC1 * 2.5; // Espera escaner
	float eC2c = esperaInicial + esperaClicC1 * 3.0; // Espera click
	
	float animClicC2 = ((TIME - eC2c) * 16.0) / 144.0; // velocidad
	animClicC2 -= 2.0 / 144.0; // movimiento
	animClicC2 = clamp(animClicC2, -2.0 / 144.0, 0.0); // bloquear movimiento
	
	if(TIME >= eC2s && TIME < eC2c){
		col.rgb += vec3(0);

		float scanlines = SCREEN_UV.y * 144.0;
		scanlines += TIME * 4.0;
		scanlines = floor(scanlines) - (floor(scanlines / 2.0) * 2.0);

		col.a += texture(spriteC2, UV).a * scanlines;
	}
	
	else if(TIME >= eC2c){
		vec4 tex = texture(spriteC2, UV + vec2(0, animClicC2));

		if(tex.a == 1.0){
			col += tex;
		}
	}

	if(col.xyz == vec3(1.0, 0.0, 0.0)){
		vec2 ditherD = SCREEN_UV * vec2(160, 144);
		ditherD = floor(ditherD) - floor(ditherD / 2.0) * 2.0;
		float dither = abs(ditherD.x - ditherD.y);
		col.xyz = vec3(0.0, dither, 1.0 - dither);
	}

	COLOR = col;


}
