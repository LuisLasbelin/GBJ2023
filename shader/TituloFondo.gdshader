shader_type canvas_item;

uniform sampler2D sprite : filter_nearest, hint_screen_texture;

void fragment() {
	
	float cut = 1.0;
	for(int iX = 0; iX < 5; iX++){
		for(int iY = 0; iY < 5; iY++){
			float X = float(iX - 2) / 166.0;
			float Y = float(iY - 2) / 144.0;
			vec4 tex = texture(sprite, UV + vec2(X, Y));
			float prov = tex.r + tex.g + tex.b;
			prov = floor(prov / 3.0);
			prov = clamp(prov, 0.0, 1.0);
			cut *= prov;
		}
	}
	
	cut = 1.0 - cut;
	
	vec2 UVP = vec2(UV.x * 160.0, UV.y * 144.0);
	float t = TIME * 4.0;
	float strip = floor(UVP.x - t) + floor(UVP.y - t);
	strip -= (floor(strip / 18.0) * 18.0);
	//strip = 1.0 - strip;
	//strip = step(strip);
	strip += cut;
	strip = clamp(strip, 0.0, 1.0);
	vec3 col = mix(vec3(0, 0, 1), vec3(1), strip);
	COLOR.rgb = vec3(0, 0, 1);
	COLOR.a = 1.0 - strip;

	//COLOR = texture(sprite, UV + vec2(10.0 / 166.0, 0.0));

}
