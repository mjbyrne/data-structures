#include <iostream>
#include <string>
#include <stack>
#include <cstdlib>
using namespace std;

int main() {
//  string example = "( + ( - 8 3 2 ) ( * 7 2 ) )";
// int length = example.length();
//  cout << "Our example is: " <<example << "\n";
//  cout <<"It has length: " << length << "\n";
//  int a = example[8];
//  char c = '0';
//  a = a - c;
//  cout << a << "\n";
//  str.clear();

  string example = "( + ( - 8 3 -2 ) ( * 78 2 ) )";
  int length = example.length();
  string holder;
  int index = 0;
  stack<string> mystack;
  stack<int> numberstack;
  while(index < length){
    while(example[index != ')']{
      if (example[index] == ' ' or index == length - 1){
        mystack.push(holder);
        holder.clear();
      }
      else {
       holder += example[index];
      }
      index = index + 1;
    }
    
  }
  // string is now on the stack (as strings)
  // takes care of multiple digit numbers and negative numbers
  // whitespace removed
  
  while(!mystack.empty()){
    cout << mystack.top() << '\n';
    mystack.pop();
  }

// for stoi use http://cpp.sh/
/* copy this and try

#include <iostream>
#include <string>
#include <cstdlib>
#include <stdlib.h>


using namespace std;

int main() {

    string test = "-45";
    int myint = atoi(test.c_str());
    myint = myint + 10;
    int urint = 10;
    string urstring = itoa(urint);
    cout << myint << '\n';
    cout << urstring << '\n';
}

*/
// HOW TO USE ATOI:
//atoi(PUTSTRINGHERE.c_str());

/*
  int total = 0;
  char c = '0';
  int a = 0;
  index = 0;
  stack<char> exStack;
  stack<int> numberStack;
  while(index < length){
    if (example[index] == ')'){
      index = index + 1;
      while(exStack.top() != '+' and exStack.top() != '-' and exStack.top() != '*' and exStack.top() != '/'){
        a = exStack.top();
        a = a - c;
        numberStack.push(a);
        exStack.pop();
        a = 0;
      }
      if (exstack.top() == '+'){
        while (!numberStack.empty()){
          total = total + numberStack.top();
          numberStack.pop();
        }
        c = c + total;
        exStack.pop();
        exStack.pop();
        exStack.push(c);
        c = '0';
        total = 0;
      }
      
      if (exstack.top() == '-')
      
      if (exstack.top() == '*')
      
      if (exstack.top() == '/')
    }
    else if (example[index] != ' '){
      exStack.push(example[index]);
    }
  }
  
  // this only works for single digits, need to parse 72 vs 7 2
    
  */
    
    
    
    
    
    
}
