shader_type canvas_item;

const int ajuste = -8;

void vertex(){
	//VERTEX += vec2(0.0, sin(VERTEX.x / 8.0 + (TIME * 4.0)) ) * 3.0;
	float disp = clamp(floor(VERTEX.y - 41.0), 0.0, 1.0) * float(ajuste * 2);
	VERTEX += vec2(disp, 0.0);
}

void fragment() {
	COLOR.rgb = vec3(0, 0, 1);
}
