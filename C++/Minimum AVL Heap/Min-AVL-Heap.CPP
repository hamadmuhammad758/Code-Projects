#include<iostream.h>
#include<conio.h>
#include<stdlib.h>
#include<math.h>

void menu(){
     cout<<"\n 1 : Create Tree";
     cout<<"\n 2 : Display";
     cout<<"\n 4 : Exit";
     cout<<endl;
}
class Node{
    private:
      int item;     // Node value
      int number;   // Node Number
      int bFactor;  // Balance Factor
      Node *left;   // will save address of left
      Node *right;  // will save address of right
      Node *parent; // will save address of parent
    public:
      int  after;   // will give number after which new node would be inserted
      int present;  // boolean for duplication check
      int vv; // given value
      Node * afAdd; // will give address after which new node would be inserted
      Node * root;  // stores address of root(top most parent)
      Node * current; //will help in traversing

      Node(){
	afAdd=root=current=left=right=NULL; // assigning all values to null
	present=after=item=bFactor=number=0;  // putting zero in integer values
      }

      void create(){ // 1st time creation of tree
	int num=0;
	cout<<"\n Enter Number of nodes : ";
	cin>>num;
	for(int i=1 ; i<=num ; i++)
	{
	  if(root==NULL)  // means no node is created
	  {
	    root=new Node;  //create 1st node
	    current=root;
	      do{
	      cout<<"\n Enter Value : ";
	      cin>>root->item; // get value of root
	     }while(root->item<0);
	    cout<<"\n correct";
	    root->right=root->left=root->parent=NULL;
	    root->number=i;
	  }
	  else
	  {
	    current=root;
	    int temp=0; //  tree must not have duplicate data
	     do{
	      cout<<"\n Enter value  : ";
	      cin>>temp;
	      } while(temp<0);
	    cout<<"\n correct";
	    vv=temp; /// globally save input value
	    after=floor(i/2); // finding node number after which new value would be placed
	    afterInsert(root); // stores address of node number after which new value would be placed  in addAff
	    if(insertNode(temp,afAdd,i))//temp is value, afAdd is address , i is node number
	      i--;  //if return 1 means duplicate data
	  }
	 }
	maintain(root); // saves balance factor of complete tree
       }

       int  insertNode(int temp,Node * current1,int num){
	  find(root);
	  if(present)
	       {
		  cout<<"\n Duplicate data";
		  present=0;
		  getch();
		  return 1;
	  }
	     while(1)
	      {
		if(temp<current1->item) //means we will go to left of tree
		{
		 if(current1->left==NULL) //if left is NULL make new node
		 {
		   current1->left=new Node; // make new node at left
		   (current1->left)->parent=current1;//address of immediate parent
		   current1=current1->left;  //moving current to left
		   current1->number=num;  // assigning node number
		   current1->item=temp;  // place value in node
		   current1->left=current1->right=NULL; //assign null to left and right

		   Node * check=current1;
		   break;

		  // return 0; // successfull addition of node
		 }
		 else
		 {
		    current1=current1->left;  // check left
		 }
	       }
	      else if(temp>current1->item)
		{
		 if(current1->right==NULL)
		 {
		   current1->right=new Node;
		   (current1->right)->parent=current1;//->right;
		   current1=current1->right;
		   current1->number=num;
		   current1->item=temp;
		   current1->left=current1->right=NULL;
		   Node * check=current1;
		   break;
		  // return 0;
		 }
		 else
		 {
		    current1=current1->right;
		 }
	    }

	    }
	    maintain(root);  // re-decide all balance factors
	    //avlTree();
	    int way[2]={0,0}; //  way[0]=
	    while((current1->parent)!=NULL)  //if root acheived stop the loop
	    {
	       maintain(root);
	       way[0]=way[1];
	       way[1]=current1->number;
	   //    cout<<"\n way[1]"<<way[1];
	   //    cout<<"\n way[0]"<<way[0];

	       current1=current1->parent;  // move one step up

	//       cout<<"\n current1->item"<<current1->item;

	       if((current1->bFactor)!=1 &&   //means tree is not balanced
		  (current1->bFactor)!=0 &&   //now balance the tree
		  (current1->bFactor)!=-1)
		  {

		      cout<<"\n Start Balancing..........\n";//<<current1->item;
		    if((((current1->right)->right)->number)==way[0])
		      {
		       cout<<"\n Imbalance due to right of right";

		       if((current1->parent==NULL))
			  root=current1->right;
		       else if(current1->parent->left==current1)
			 {
			 (current1->parent)->left=current1->right; // change parent's right
			 }
		       else if(current1->parent->right==current1)
			 {
			 (current1->parent)->right=current1->right; // change parent's right
			 }


		       Node * chk=current1->parent;


		       (current1->parent)=current1->right;     // change own parent

			Node * a=current1;                // swapping
			Node * b=current1->right->left;                // swapping
			current1->right->left=a;
			current1->right=b;

			(current1->parent)->parent=chk;
			swap(root);
			display(root);
			maintain(root);
		      }
		      else if((((current1->right)->left)->number)==way[0])
		      {
		       cout<<"\n Imbalance due to right of left";//<<current1->item;
		       display(root);
		       Node * a[5];

		       a[0]=current1;
		       a[1]=current1->parent;
		       a[2]=current1->right;
		       a[3]=current1->right->left;
		       a[4]=current1->right->left->right;

		       //**********replacement 1**************

		       if(current1->right->left->right!=NULL)
			current1->right->left->right->parent=a[2];

		       //**********replacement 2**************

		       current1->right->left->left=a[0];

		      // if(current1->parent!=NULL)
		      // {
			 current1->right->left->parent=a[1];
			 current1->right->left->right=a[2];
		      // }

		       //**********replacement 3**************

		       current1->right->left=a[4];
		       current1->right->parent=a[3];

		       //**********replacement 4**************

		       if((current1->parent==NULL))
			{
			  root=a[3];
			}
		       else if(current1->parent->right==current1)
			  current1->parent->right=a[3];
		       else if(current1->parent->left==current1)
			  current1->parent->left=a[3];

		       //**********replacement 5**************

		       current1->parent=a[3];
		       current1->right=NULL;

		       maintain(root);
		       cout<<"\n  ... Going to Swap following nodes if any....\n";
		       display(root);
		       getch();
		       swap(root);
		      // cout<<"\n  After Swap \n";
		      // display(root);
		       }
		      else if((((current1->left)->left)->number)==way[0])
		      {
		       cout<<"\n ...Imbalance due to left of left....\n";

		      Node * a[4];
		      a[0]=current1->left->left;
		      a[1]=current1->left->right;
		      a[2]=current1->left;
		      a[3]=current1;


		      current1->left->right=a[3];
		      current1->left->parent=current1->parent;

		      if(current1->parent->left==a[3])
			current1->parent->left=a[2];
		      else if(current1->parent->right==a[3])
			current1->parent->right=a[2];

		      current1->left=a[1];
		      current1->left->parent=a[3];

		      if((current1->parent==NULL))
			 {
			    root=a[2];
			    current1->parent=NULL;
			 }
		      else
			  current1->parent=a[2];
		      getch();
		      swap(root);
		      maintain(root);
		       //break;
		      }
		      else if((((current1->left)->right)->number)==way[0])
		      {
		       cout<<"\n ...Imbalance due to left of right....";
		       Node * a[5];
		       a[0]=current1->parent;
		       a[1]=current1;
		       a[2]=current1->left;
		       a[3]=current1->left->right;
		       a[4]=current1->left->right->right;

		       if(current1->parent==NULL)
			     root=a[3];
		       //***************replacement 1*************

		       current1->left->right->right->parent=a[2];

		       //***************replacement 2*************

		       current1->left->right->right =a[1];
		       current1->left->right->parent=a[0];
		       current1->left->right->left=a[2];

		       //***************replacement 3*************

		       current1->left->right=a[4];
		       current1->left->parent=a[1];

		       //***************replacement 4*************

		       current1->parent->left=a[3];

		       //***************replacement 5*************

		       current1->left=NULL;
		       current1->parent=a[3];
		       swap(root);
		       maintain(root);
		      }


		  }
	       getch();
	    }
	    swap(root);
	    cout<<"\n____________________________________________________\n";
	    cout<<"\n...... Final output after this node ..... \n";
	    display(root);
	    cout<<"\n____________________________________________________\n";
	    return 0;
       }

       void   afterInsert(Node * base){  // give address of node number after which new will be inserted
	  if(after==base->number)
	      afAdd=base;
	  if(base->left!=NULL)
	       afterInsert(base->left);
	  if(base->right!=NULL)
	       afterInsert(base->right);

       }

       void swap(Node *base){
	  if(base->left!=NULL)
	       swap(base->left);

	  if(base->right!=NULL)
	       swap(base->right);

	  if((base->item)<(base->parent->item))
	  {
	       cout<<"\n Replace  child "<<base->item<<"  with parent "<<base->parent->item  ;
	      int a=base->item;
	      base->item=base->parent->item;
	      base->parent->item=a;
	  }
       }
       void find(Node * base)
       {
	  if(vv==base->item)
	  {
	 //   cout<<"base->item"<<vv<<"--"<<base->item;
	    present=1;
	  }

	  if(base->left!=NULL)
	       find(base->left);

	  if(base->right!=NULL)
	       find(base->right);

       }

       void balanceFactor(Node *p){
	 int max1,max2;
	 max1=1; max2=1;
	 if(p->left!=NULL)
	  path(p->left,max1,1);
	 else
	 max1=0;
	if(p->right!=NULL)
	 path(p->right,max2,1);
	else
	 max2=0;
	p->bFactor=max1-max2;
       }

	void path(Node* p,int &max, int length){
	     if (p!=NULL){
		 path(p->right,max,length+1);
		 if ((p->left==NULL)&&(p->right==NULL)&&(max<length))
			max=length;
		  path(p->left,max,length+1);
		 }
	}

	void maintain(Node * base){       // set all  Balance factors
	  balanceFactor(base);
	  if(base->left!=NULL)
	       maintain(base->left);
	  if(base->right!=NULL)
	       maintain(base->right);

	}
       void display(Node * base)    // post-order
       {

	   cout<<" \n No. : "<<base->number;
	   cout<<" \t Item : "<<base->item;
	   cout<<" \t Balance Factor : "<<base->bFactor;

	  if(base->left!=NULL)
	       display(base->left);
	  if(base->right!=NULL)
	       display(base->right);

       }
};
void main()
{
clrscr();
Node n;
int flag=0;
char in='\0';
menu();
while(1)
{
  cout<<"\n Input Choice : ";
  cin>>in;
   switch(in)
   {
     case '1':{
      n.create();
      getch();
      clrscr();
      menu();
     break;
     }
     case '2':{
	n.display(n.root);
	getch();
	clrscr();
	menu();
     break;
     }
     case '3':{
      //	n.balanceFactor(n.root);
	getch();
	clrscr();
	menu();
     break;
     }
     case '4':{
	     flag=1;
	     break;
     }
     default:{
       cout<<"Invalid";  break;
     }
   }
    if(flag){
       break;
    }

 }
getch();
}