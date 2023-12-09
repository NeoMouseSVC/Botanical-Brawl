varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 baseColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 orangeTint = vec4(1.0, 0.5, 0.0, 1.0);  // Orange color
    gl_FragColor = baseColor * orangeTint;  
}


