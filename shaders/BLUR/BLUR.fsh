varying vec2 v_TexCoord;
uniform sampler2D gm_BaseTexture;
uniform vec2 resolution;
uniform float blur_radius;

const float med[9] = float[](0.045, 0.122, 0.045, 0.122, 0.332, 0.122, 0.045, 0.122, 0.045);
const vec2 offset[9] = vec2[](vec2(-1.0, -1.0), vec2(0.0, -1.0), vec2(1.0, -1.0), vec2(-1.0, 0.0), vec2(0.0, 0.0), vec2(1.0, 0.0), vec2(-1.0, 1.0), vec2(0.0, 1.0), vec2(1.0, 1.0));

void main()
{
    vec4 color = vec4(0.0);
    for (int i = 0; i < 9; i++)
    {
        vec2 uv = v_TexCoord + (offset[i] * blur_radius) / resolution;
        color += texture2D(gm_BaseTexture, uv) * med[i];
    }
    gl_FragColor = color;
}
