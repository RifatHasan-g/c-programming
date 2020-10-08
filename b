
                                // Question No :1
                                ===============


#include <stdio.h>
#include<stdlib.h>
void printList(); 
struct node{
    int data;
    struct node *next ;
};

struct node *head;

int main(){
  head = (struct node*)malloc(sizeof(struct node));
 struct node  * first = (struct node*)malloc(sizeof(struct node));
 struct node   *second = (struct node*)malloc(sizeof(struct node));
 struct node   *third = (struct node*)malloc(sizeof(struct node));
 struct node   *fourth = (struct node*)malloc(sizeof(struct node));

    head ->data = 8;
    head->next = first;
    first->data= 2;
    first->next= second;
    second->data= 4;
    second->next= third;
   
    third->data = 3;
    third->next = fourth;
    fourth->data = 7;
    fourth->next = NULL;
    printList();
    
    
    struct node *new_node = (struct node*)malloc(sizeof(struct node));
    new_node->data= 9;
    new_node->next=third;
    second->next=new_node;
    printList();
    
    
    struct node  *temp=fourth;
    third->next=NULL;
    free(fourth);
    printList();
    return 0;
}
    
  
    
    void printList (){
       
        printf("\n\n printing List delete(7):");
         printf("\n\n printing List insert (9):");
         printf("\n\n printing List:");
        struct node *temp= head;
        
        while(temp!=NULL){
            printf("%d,",temp->data);
            temp=temp->next;
        }
        printf("\n\n\n\n\n");
    }

    
                                   //  Question No:-6
                                //   ================ 
    
 #include <stdio.h>
#include<stdlib.h>

struct node{
    int a,b,c;
    struct node *link ;
};

struct node *b;
    
void print(){
    struct node*temp;
    temp = b;
    
    while(temp!=NULL){
        printf("%d\n",temp->a);
        printf("%d\n",temp->c);
        temp=temp->link;
    }
}

int main(){
    b=NULL;
    b= (struct node*)malloc(sizeof(struct node));
    b->a=4;
    b->link=(struct node*)malloc(sizeof(struct node));
    b->link->c=7;
    b->link->link=NULL;
    print();
    return 0;
}


                                      // Question No:-1
                                  // ========================

 #include <stdio.h>
#include<stdlib.h>

struct node{
    float data;
    struct node *link ;
};


struct node *head;


void print(){
    struct node *temp;
    temp= head;
    while(temp!=NULL){
        printf("%.1f\n",temp->data);
        temp=temp->link;
    }
    
}

int main(){
    head = NULL;
    head = (struct node*)malloc(sizeof(struct node));
    head->data=1.3;
    head->link=(struct node*)malloc(sizeof(struct node));
    head->link->data=2.3;
    head->link->link=NULL;
    print();
    return 0;
}







