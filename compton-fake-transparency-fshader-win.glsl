uniform float opacity;
uniform bool invert_color;
uniform sampler2D tex;

void main() {
	vec4 c = texture2D(tex, gl_TexCoord[0].xy);
	if (!invert_color) { // Hack to allow compton exceptions
		// Change the vec4 to your desired key color
		vec4 vdiff = abs(vec4(0.0, 0.0039, 0.0, 1.0) - c); // #000100
		float diff = max(max(max(vdiff.r, vdiff.g), vdiff.b), vdiff.a);
		// Change the vec4 to your desired output color
		if (diff < 0.001)
			c = vec4(0.0, 0.0, 0.0, 0.890196); // #000000E3
	}
	c *= opacity;
	gl_FragColor = c;
}
