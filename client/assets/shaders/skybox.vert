#version 330 core
layout (location = 0) in vec3 aPos;

out vec3 texCoords;

uniform mat4 camera;

void main()
{
    texCoords = aPos;
    gl_Position = (camera * vec4(aPos, 1.0f)).xyww;
}