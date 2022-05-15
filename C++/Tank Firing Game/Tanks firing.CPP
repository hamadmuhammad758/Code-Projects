#include <graphics.h>
#include <stdlib.h>
#include <dos.h>
#include <conio.h>

int f_xbj;
int f_ybj;

void fire(int p, int &f_xbj, int &f_ybj)
{
	if(p==1)
	{
	setcolor(0);
	line(f_xbj, f_ybj, f_xbj-2, f_ybj-3);
	line(f_xbj+60, f_ybj-5, f_xbj+58, f_ybj-8);
	line(f_xbj+15, f_ybj, f_xbj+13, f_ybj-3);
	line(f_xbj+45, f_ybj-5, f_xbj+43, f_ybj-8);
	line(f_xbj+30, f_ybj, f_xbj+28, f_ybj-3);
	f_xbj-=4;
	f_ybj-=6;
	setcolor(6);
	line(f_xbj, f_ybj, f_xbj-2, f_ybj-3);
	line(f_xbj+60, f_ybj-5, f_xbj+58, f_ybj-8);
	line(f_xbj+15, f_ybj, f_xbj+13, f_ybj-3);
	line(f_xbj+45, f_ybj-5, f_xbj+43, f_ybj-8);
	line(f_xbj+30, f_ybj, f_xbj+28, f_ybj-3);

	}

	else if(p==2)
	{
	setcolor(0);
	line(f_xbj, f_ybj, f_xbj, f_ybj-5);
	line(f_xbj+60, f_ybj-5, f_xbj+60, f_ybj-10);
	line(f_xbj+15, f_ybj, f_xbj+15, f_ybj-3);
	line(f_xbj+45, f_ybj-5, f_xbj+45, f_ybj-8);
	line(f_xbj+30, f_ybj, f_xbj+30, f_ybj-3);
	f_ybj-=8;
	setcolor(6);
	line(f_xbj, f_ybj, f_xbj, f_ybj-5);
	line(f_xbj+60, f_ybj-5, f_xbj+60, f_ybj-10);
	line(f_xbj+15, f_ybj, f_xbj+15, f_ybj-3);
	line(f_xbj+45, f_ybj-5, f_xbj+45, f_ybj-8);
	line(f_xbj+30, f_ybj, f_xbj+30, f_ybj-3);
	}
	if(p==3)
	{
	setcolor(0);
	line(f_xbj, f_ybj, f_xbj+2, f_ybj-3);
	line(f_xbj+60, f_ybj-5, f_xbj+62, f_ybj-8);
	line(f_xbj+15, f_ybj, f_xbj+17, f_ybj-3);
	line(f_xbj+45, f_ybj-5, f_xbj+47, f_ybj-8);
	line(f_xbj+30, f_ybj, f_xbj+32, f_ybj-3);
	f_xbj+=4;
	f_ybj-=6;
	setcolor(6);
	line(f_xbj, f_ybj, f_xbj+2, f_ybj-3);
	line(f_xbj+60, f_ybj-5, f_xbj+62, f_ybj-8);
	line(f_xbj+15, f_ybj, f_xbj+17, f_ybj-3);
	line(f_xbj+45, f_ybj-5, f_xbj+47, f_ybj-8);
	line(f_xbj+30, f_ybj, f_xbj+32, f_ybj-3);
	}


}

void gun_position(int p,int color, int &xbj, int &ybj)
{
	setcolor(color);

	if(p==1)
	{
	line(xbj+10, ybj-9, xbj+8, ybj-12);
	line(xbj+70, ybj-14, xbj+68, ybj-17);
	f_xbj=xbj+10;
	f_ybj=ybj-9;
	}


	if(p==2)
	{
	line(xbj+15, ybj-10, xbj+15, ybj-15);
	line(xbj+75, ybj-15, xbj+75, ybj-20);
	f_xbj=xbj+15;
	f_ybj=ybj-10;
	}

	if(p==3)
	{
	line(xbj+20, ybj-9, xbj+22, ybj-12);
	line(xbj+80, ybj-14, xbj+82, ybj-17);
	f_xbj=xbj+20;
	f_ybj=ybj-9;
	}

}

void gun_remove(int xbj,int ybj)
{
	line(xbj+10, ybj-9, xbj+8, ybj-12);
	line(xbj+70, ybj-14, xbj+68, ybj-17);
	line(xbj+15, ybj-10, xbj+15, ybj-15);
	line(xbj+75, ybj-15, xbj+75, ybj-20);
	line(xbj+20, ybj-9, xbj+22, ybj-12);
	line(xbj+80, ybj-14, xbj+82, ybj-17);
}

void ship(int color, int &xbj, int &ybj)
{

   setcolor(color);
   setfillstyle(1,color);
   line(xbj,ybj,xbj+100,ybj-5);     //top
   line(xbj,ybj+30,xbj+80,ybj+30);  //bottom
   line(xbj,ybj,xbj,ybj+30);        //left
   line(xbj+80,ybj+30,xbj+100,ybj-5);  //right
   arc(xbj+15,ybj,0,180,8);
   bar3d(xbj+40,ybj-25,xbj+45,ybj,5,5);
   arc(xbj+75,ybj-4,0,180,8);

   floodfill(xbj+1,ybj+1,color);

}

void jhaz(int &xbj, int &ybj, char &ch, int &p)
{

	ship(11, xbj, ybj);

	if(ch!='w')
		ch='e';

	   if( kbhit() )
	   ch=getch();


	if(ch=='a' && xbj>50)
	{

	ship(0, xbj, ybj);
	gun_remove(xbj,ybj);

	xbj-=100;
	}

	if(ch=='d' && xbj < (getmaxx()-100) )
	{
	ship(0, xbj, ybj);
	gun_remove(xbj,ybj);

	xbj+=100;
	}

	if(ch=='c')
	{
		if(p<3)
		p++;

		gun_position(p, 3, xbj, ybj);
		gun_position(p-1, 0, xbj, ybj);

	}

	if(ch=='z')
	{
		if(p>1)
		p--;

		gun_position(p,3, xbj, ybj);
		gun_position(p+1,0, xbj, ybj);

	}


}

void enemyjhaz(int &x, int &y, int &x1, int &y1, int &f, int &c, int &xbj, int &ybj, int i)
{
   if(y1<500)
   {
   setfillstyle(1,3);
   bar(x, y, x+60, y+30);



	setfillstyle(1,0);
	bar(x+59, y, x+60, y+30);
	x--;

	if( x < getmaxx()-100*(i+1) && y1< 500 )    //parashoot enemy
	{

	x1=getmaxx()-100*(i+1);

	setfillstyle(0,0);
	bar(x1, y1-1, x1+10, y1);


	setfillstyle(1,4);
	bar(x1, y1, x1+10, y1+10);

		if(y1 > getmaxy()/2 && !(f))    //laser fire
		{
			setcolor(5);
			line(x1,y1,xbj+10,ybj);
			c++;

			if(c==4)
				f=1;

		}

		if(y1==getmaxy()/2+6)
			cleardevice();


	y1+=1;
	}


	delay(15);

   }
}


void main()
{
   int gdriver = DETECT, gmode, errorcode;
   initgraph(&gdriver, &gmode, "c:\\turboc3\\bgi");

   int ybj=400, xbj=150, fire_flag[5]={0}, count_fire[5]={0},i=0,gun_p=0;
   char ch;
   int fire_life[]={0,0,0,0,0},j;
   int y=40, y1[5]={70, 70, 70, 70, 70}, x=getmaxx()-100, x1[5];


   while(ch!='q')
   {

   i=0;
   j=0;

	while(i<5)
	{

		if(fire_life[i]==0)
		enemyjhaz(x, y, x1[i], y1[i], fire_flag[i], count_fire[i], xbj, ybj, i);

		if(x1[i] > f_xbj && x1[i] < f_xbj+60 && y1[i] > f_ybj && y1[i] < f_ybj+60 )
			fire_life[i]=1;

		i++;

	}

	while(j<10)
	{

			jhaz(xbj, ybj, ch, gun_p);

			if( kbhit() )
				ch=getch();



		if(ch=='w')
			fire(gun_p, f_xbj, f_ybj);
		if(ch=='q')
			break;


	j++;

	}

   }


   closegraph();
}