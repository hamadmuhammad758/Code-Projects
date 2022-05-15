#include<iostream.h>
#include<string.h>
#include<conio.h>
void main()
{
clrscr();
int pos=0,found=0,i,check=0,chance=3;
int search[9];
cout<<"\t"<<"Word Guessing Game"<<endl;
char word,find[9]="pakistan";
char show[9]="********";
cout<<show<<endl;
while(chance>0)
  {
	pos=0;
	cout<<"Enter character=";
	cin>>word;
     for(i=0 ; i<9 ; i++)
	{
	if(word==find[i])
	 {
		show[i]=find[i];
		pos+=1;
	 }
	}

	if(pos==0)
		{
		chance=chance-1;
		cout<<chance<<" chances left"<<endl;
		}
	cout<<show<<endl;

	if(strcmp(find,show)==0)
	  {
	  check=1;
	  break;
	  }
  }      if(check==1)
		{
		cout<<"You won";
		}
	else
		{
		cout<<"you lost"<<endl;
		cout<<"The word was pakistan";
		}
getch();
}