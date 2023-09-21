shader_type canvas_item;
// resolucion sprite es 96 * 96, la mitad es  48
uniform sampler2D sprite : filter_nearest;
uniform int estado : hint_range(0, 3);
const float desp = 48.0;
const vec2 seleccion[4] = vec2[4](
	vec2(0, 0), vec2(0.5, 0),
	vec2(0, 0.5), vec2(0.5, 0.5)
);

void fragment() {
	COLOR = texture(sprite, UV / vec2(2, 2) + seleccion[estado]);
}
