// Ex6ai.cpp : main project file.

// Ex6.cpp : main project file.

#include <StdAfx.h>
#include <windows.h>
#include <gl/gl.h>
#include <gl/glut.h>


void init(GLvoid){
	float matdif[4]={1,1,1,1};
	float litdif[4]= {0,1,1,1};
	float litdif1[4]= {1,0,1,1};
	float litdif2[4]= {0,0,.6,1};
	glMaterialfv(GL_FRONT,GL_AMBIENT,matdif);
	glLightfv(GL_LIGHT0,GL_AMBIENT, litdif);
	glLightfv(GL_LIGHT1,GL_DIFFUSE, litdif);
	glLightfv(GL_LIGHT2,GL_DIFFUSE, litdif2);
	glShadeModel(GL_SMOOTH);
	glClearColor(1,1,1,0);
	glEnable(GL_DEPTH_TEST);
	glEnable(GL_LIGHTING);
	//glEnable(GL_LIGHT0);
	glEnable(GL_LIGHT1);
	//glEnable(GL_LIGHT2);

}

void display(void){
	float litpos[4]={0,1,.8,0};
	float litpos2[4]={1,-1,.8,0};
	float litpos3[4]={0,-1,.8,0};
	glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
	gluLookAt(1,1,1,0,0,0,0,0,1);
	glLightfv(GL_LIGHT0,GL_POSITION,litpos);
	glLightfv(GL_LIGHT1,GL_POSITION,litpos);
	glLightfv(GL_LIGHT2,GL_POSITION,litpos);
	glutSolidSphere(2,64,64);
	glFinish();
}

void reshape(int w, int h){

	float ar;
	ar=(float)w/(float)h;
	glViewport(0,0,w,h);
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	glOrtho(-3.0,3.0,-3.0*ar,3.0*ar,-10,10);

}

int main(int argc, char** argv)
{
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE|GLUT_RGB|GLUT_DEPTH);
    glutInitWindowSize(500,500);
    glutCreateWindow("Sphere");
    glutDisplayFunc(display);
    glutReshapeFunc(reshape);
    init();
    glutMainLoop();
	return 0;			/*ANSI C requires main to return int*/
}