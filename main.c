#include <stdio.h> //This is the standard input out put libary for C 
#include <stdlib.h> //This is the standard libary for C 


//Should be a global variable 
 int length; //REASON THIS IS EXTERN IS BECAUSE WE WANT ASSEMBLY TO BE ABLE TO SEE IT 

//This is saying that my assembly Function is Outside of our program 
extern int asm_main();

int input()
{
    int length = 0;
    printf("Now Please Enter How Long you Want the loop to Be\n");

    scanf("%d",&length); //We need to pass length by refrence so it can be editted 
    return length; //Return what ever length they said 
}

int main()
{
    char Name[20]; //Going to define a C String to store their name 

    printf("Please Enter Your Name\n\n");
    scanf("%s",Name);//What Type Of Input we getting, Where to store it 

    //Instead of calling input();
    asm_main(); //Im going to call my assembly function so it uses the code over THERE 

    printf("\n\n\nTHANK YOU FOR PLAYING: %s\n\n",Name); //This is the Ending Phrase 

    return 0;
}





