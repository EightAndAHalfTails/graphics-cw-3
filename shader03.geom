#version 150 compatibility
#extension GL_ARB_geometry_shader4 : enable

#define WINDOWS 0

#if WINDOWS
layout (triangles) in;
layout (triangle_strip) out;
#endif

layout (max_vertices = 72) out;

const float pi = 3.14159265359;

////////////////
uniform vec4 ambientColor;
uniform vec4 diffuseColor;
uniform vec4 specularColor;
uniform float specularExponent;

uniform int level;
uniform float time;

in vertexData
{
  vec3 pos;
  vec3 normal;
  vec4 color;
}vertices[];

out fragmentData
{
  vec3 vpos;
  vec3 normal;
  vec4 color;
}frag;   


///////////////////////////////
// exercise 3 random helper function for bonus 3.1
float rnd(vec2 x)
{
  int n = int(x.x * 40.0 + x.y * 6400.0);
  n = (n << 13) ^ n;
  return 1.0 - float( (n * (n * n * 15731 + 789221) + 1376312589) & 0x7fffffff) / 1073741824.0;
}

void createVertBary(float a, float b)
{
  float c = 1 - a - b;
  frag.vpos = a * vertices[0].pos
            + b * vertices[1].pos
            + c * vertices[2].pos;
  frag.normal = a * vertices[0].normal
              + b * vertices[1].normal
              + c * vertices[2].normal;
  frag.color = a * vertices[0].color
             + b * vertices[1].color
             + c * vertices[2].color;
  gl_Position = a * gl_in[0].gl_Position
              + b * gl_in[1].gl_Position
              + c * gl_in[2].gl_Position;

  /*****Bonus Effects**************/
  // pulsing teapot
  // gl_Position.xyz += 0.02 * sin(1.0/5.0 * pi * time) * frag.normal;

  // same, but with random phase offset per vertex
  gl_Position.xyz += 0.05 * sin(1.0/5.0 * pi * time + rnd(frag.vpos.xy)) * frag.normal;
  
  // [tea-brewing intensifies]
  // gl_Position.xyz += 0.05 * vec3( rnd(vec2(0, time)), rnd(vec2(time, 0)), rnd(vec2(time, time)) );

  // [intensification intensifies]
  gl_Position.xyz += time * 0.05 * vec3( rnd(vec2(0, time)), rnd(vec2(time, 0)), rnd(vec2(time, time)) );

  // here's your melting teapot.
  // gl_Position.y -= 0.1 * time * abs(rnd(frag.vpos.xy));

  // even meltier teapot
  gl_Position.y -= 0.1 * time * sqrt(abs(rnd(frag.vpos.xy)));

  /*********************************/
  EmitVertex();
}

///////////////////////////////
void main()
{
  float step = 1.0 / pow(2, level);

  for(float a = 0; a < 1; a+= step)
    {
      for(float b = 0; b < 1 - a; b+= step)
	{
	  createVertBary(a, b);
	  createVertBary(a + step, b);
	  createVertBary(a, b + step);
	  EndPrimitive();
	}
    }
}
