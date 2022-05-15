#include <graphics.h>
#include <iostream.h>
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <dos.h>

#define background 0
#define foreground 15
#define brickcolor 3

struct Bricks{
	int x;
	int y;
	int height;
	int width;
	int color;
	int visible;

   void setbrick(int xx,int yy, int w ,int h, int c)
   {
       x = xx;
       y = yy;
       width = w;
       height = h;
       color = c;
       visible = 1;
    }

    void setbrick(int xx,int yy,int w,int h)
    {
       setbrick(xx ,yy, w, h, foreground);
    }

    void setbrick(int xx,int yy)
    {
       setbrick(xx , yy , 50 , 25, foreground );
    }

    void setbrick()
    {
       setbrick(150,150,100,50, foreground );
    }

	  void draw()
	   {
	      setcolor(brickcolor);
	      setfillstyle(1,brickcolor);
	      bar(x,y,x+width,y+height);
	   }
	   void erase()
	   {

	      setcolor(background);
	      setfillstyle(1,background);
	      bar(x,y,x+width,y+height);

	   }

};

 struct Strike{
	int x;
	int y;
	int height;
	int width;
	int stepsize;
	int color;

    void setbar(int xx,int yy, int h ,int w, int ss, int c)
    {
       x = xx;
       y = yy;
       height = h;
       width = w;
       stepsize = ss;
       color = c;
    }
    void setbar()
    {
       setbar(getmaxx()/2 , getmaxy()-20 , 10, 100, 5	, foreground );
    }

    void moveLeft()
    {
       x -= stepsize;
    }
    void moveRight()
    {
       x += stepsize;
    }
    void draw()
    {
       setcolor(color);
       setfillstyle(1,color);
       bar(x,y,x+width,y+height);
    }
    void erase()
    {
       setcolor(background);
       setfillstyle(1,background);
       bar(x,y,x+width,y+height);
    }
 };

struct Ball{
   int x;
   int y;
   int radius;
   int step;
   int direction;
   int color;


   void setBall(int x1,int y1,int r,int s, int d, int c){
      x = (x1<r||x1>getmaxx()-r)?getmaxx()/2:x1;
      y = y1;
      radius = (r<1)?1:r;
      step = s;
      direction = d;
      color = c;
   }

   void setBall(int x1,int y1,int r){
	setBall(x1,y1,r,5,0,foreground);
   }
   void setBall(int x,int y){
      setBall(x,y,5,5,0,foreground);
   }
   void setBall(){
      setBall(getmaxx()/2+50,getmaxy()-50,5,1,0,foreground);
   }
   void move(){

      switch(direction){
	 case 0: y-=step; x-=step; break;
	 case 1: x+=step; y-=step; break;
	 case 2: y+=step; x+=step; break;
	 case 3: x-=step; y+=step; break;
      }
   }
   void draw(){
      setcolor(RED);
      setfillstyle(1,RED);
      fillellipse(x,y,radius,radius);
   }
   void erase(){
      setcolor(background);
      setfillstyle(4,background);
      fillellipse(x,y,radius,radius);
   }
};

void gameover(){
   cleardevice();
      setcolor(5);
   settextjustify(LEFT_TEXT, CENTER_TEXT);
   settextstyle(GOTHIC_FONT, HORIZ_DIR, 8);
   outtextxy(60,200, "Game Over");

//   settextstyle(2,0,12);
 //  outtextxy(25,25,"Game Over");
   getch();
}

int main(void)
{
   int gdriver = DETECT, gmode, errorcode;
   initgraph(&gdriver, &gmode, "..\\BGI");
   int pos=0,x1=0,x2=10,c=0;
    setbkcolor(7);
   for(int i=0 ; i<=2000 ; i++)
   {
   setcolor(i);
   settextjustify(LEFT_TEXT, CENTER_TEXT);
   settextstyle(GOTHIC_FONT, HORIZ_DIR, 8);
   outtextxy(60,200, "Brick Breaker");

   setcolor(9);
   settextstyle(GOTHIC_FONT, HORIZ_DIR, 4);
   outtextxy(60,300, "Press y key to continue....");


   setcolor(3);
   settextstyle(SANS_SERIF_FONT, HORIZ_DIR, 4);
   outtextxy(90,40, "W .A .Ansari");


   setcolor(3);
   settextstyle(SANS_SERIF_FONT, HORIZ_DIR, 4);
   outtextxy(90,70, "Malik Kamran Hafeez");


   setcolor(3);
   settextstyle(SANS_SERIF_FONT, HORIZ_DIR, 4);
   outtextxy(90,100, "Muhammad Hamad");
   delay(100);

   if(kbhit())
   {
   char input=getch();
   if(input==27)
   break;
   else if(input==121)
   pos=1;
   }
  if(pos==1)
    {
       if(x2>getmaxx()-30)
       break;
       setcolor(RED);
       setfillstyle(6,RED);
       bar(2+x1,400,2+x2,410);
       x1+=15;
       x2+=15;
    }
   }
//   getch();

   cleardevice();

   Ball ball;
   ball.setBall();
   Strike strike;
   Bricks bricks[5][8];

   strike.setbar();
   strike.draw();

   int top=8,right=400,left=8,bottom=600;
   rectangle(8,8,getmaxx()-8,getmaxy()-8);


   int bflag = 0;
   while(1){

    int i,j,column=10,row=20;
    for(i=0 ; i<5 ; i++)
    {
      column=80;
       for(j=0 ; j<8 ; j++)
       {
	    if(bflag == 0){
	       bricks[i][j].setbrick( column , row );

	    }

	    if(bricks[i][j].visible==1){
	       bricks[i][j].draw();
	       column += bricks[0][0].width + 2;
	    }
       }
	row += bricks[0][0].height + 2;
    }
    bflag = 1;

    if (kbhit())
      {
	 char input=getch();
	 strike.erase();

	 if(input==27)
		  break;
	 else if(input==75 && strike.x>=10)
		strike.moveLeft();
		 else if(input==77 && strike.x<(getmaxx()-110))
			strike.moveRight();
			 strike.draw();
      }


      for(i=0;i<5;i++){
	 for(int j=0;j<8;j++){
	    if( ( ball.y - ball.radius - ball.step <= bricks[i][j].y + bricks[i][j].height && ball.y - ball.radius - ball.step >= bricks[i][j].y ) && ( ball.x - ball.radius >= bricks[i][j].x && ball.x + ball.radius <=bricks[i][j].x + bricks[i][j].width ) ){
	       if( bricks[i][j].visible == 1){
		  bricks[i][j].visible = 0;
		  bricks[i][j].erase();
		  setcolor(3);
		 settextstyle(SANS_SERIF_FONT, HORIZ_DIR, 4);
		 c++;
	//	 outtextxy(90,100,c);

		  //getch();
	       }
	    }
	 }
      }

      //--------check-------------

      //---------------------

      if(ball.x<20)
	 {
		if(ball.direction==0)
		    ball.direction = 1;
		else
		    ball.direction= 2;
	}

      else if(ball.y<20)
       {
		if(ball.direction==1)
		    ball.direction = 2;
		else
		    ball.direction=3;
       }

       else if(ball.y + ball.radius +ball.step > strike.y)
       {
	  if(ball.x-ball.radius >= strike.x && ball.x + ball.radius <= strike.x+strike.width){
		 if(ball.direction==3)
		    ball.direction = 0;
		 else
		    ball.direction=1;
	  }
	  else{
	     gameover();
	     break;
	  }
       }

       else if(ball.x>getmaxx()-20)
       {
		 if(ball.direction==2)
		    ball.direction = 3;
		 else
		    ball.direction = 0;
       }

      delay(5);
      ball.erase();
      ball.move();
      ball.draw();

   }

   closegraph();
   getch();
   return 0;
}