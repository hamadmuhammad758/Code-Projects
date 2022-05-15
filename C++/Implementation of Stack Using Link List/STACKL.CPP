#include<iostream.h>
#include<conio.h>

struct DNode
{
int item;
DNode *next;
DNode *pre;
};

class Stackn
{
int size,top;
DNode *head;
DNode *cur;

public:

Stackn ()
{
head=NULL;
cur=head;
size=0;
top=0;

}
////////////////////////////////// menu
void menu()

{
cout<<"++++++++++++++++++++++++++++"<<endl;
	cout<<" STACK IMPLEMENTATION:"<<endl;
	cout<<"============================"<<endl;
	cout<<"++++++++++++++++++++++++++++"<<endl;
	cout<<"1.Create"<<endl;
	cout<<"2.Push"<<endl;
	cout<<"3.Pop"<<endl;
	cout<<"4.Display"<<endl;
	cout<<"5.Exit"<<endl;
int choice;
	cout<<"Enter Your Choice"<<endl;
	cin>>choice;
		while (choice!=5)
		{
			if (choice==1)
			{
			create();
			}

			else if (choice==2)
			{
			push();
			}

			else if (choice==3)
			{
			pop();
			}

			else if (choice==4)
			{
			display();
			}
					   clrscr();
		cout<<"++++++++++++++++++++++++++++"<<endl;
		cout<<"STACK IMPLEMENTATION:"<<endl;
		cout<<"============================"<<endl;
		cout<<"++++++++++++++++++++++++++++"<<endl;
		cout<<"1.Create"<<endl;
		cout<<"2.Push"<<endl;
		cout<<"3.Pop"<<endl;
		cout<<"4.Display"<<endl;
		cout<<"5.Exit"<<endl;
		cout<<"Enter Your choice"<<endl;
		cin>>choice;
		}
}
//////////////////////////////////////////////// create

void create ()
{
int s;
cout<<"Enter size of stack:"<<endl;
cin>>s;
while (s < 0)
{
cout<<"Invalid size!!!"<<endl;
cout<<"Enter Size again"<<endl;
cin>>s;

}

size=s;
cout<<"Stack Created Succesfully"<<endl;
getch();
}

void push ()
{
int a;
cout<<"Enter the Element to push"<<endl;
cin>>a;
	if (top>=size)
	{
	cout<<"StacK is Full !!! Can not push"<<endl;
	}

	else
	{
		if (cur==head)
		{
		cur->next=new DNode();
		cur=cur->next;
		cur->item=a;
		cur->pre=head;
		cur->next=NULL;


		}

		else
		{
		cur->next=new DNode();
		cur->next->pre=cur;
		cur=cur->next;
		cur->next=NULL;
		cur->item=a;


		}
	cout<<"Element Pushed Succesfully"<<endl;
	top++;
	}
getch();
}

///////////////////////////////////////////pop
int pop ()
{
int a=0;

	if (top==0)
	{
	cout<<"Stack Empty!!! First Push some elements"<<endl;
	cout<<"Returning 0"<<endl;
	}

	else

	{
	a=cur->item;
	cur=cur->pre;
	cur->next->pre=NULL;
	cur->next=NULL;
	cout<<"Popped Element is :"<<a<<endl;
	top--;
	}
getch();
return a;
}
//////////////////////////////////////// display();
void display ()

{
clrscr();
	DNode *temp;
	temp=cur;
	if (top==0)
	{
	cout<<"Stack Empty"<<endl;
	}

	else
	{
		for (int i=top;i>0;i--)
		{
		cout<<"|"<<temp->item<<"|"<<endl;
		cout<<"_____"<<endl;
		temp=temp->pre;
		}
	}

getch();
}


};

void main ()
{
clrscr();
Stackn s;
s.menu();
getche();
}