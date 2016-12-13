#include <iostream>
#include <string>
#include <stack>
using namespace std;

int main() {
  string example = "( + ( - 8 3 2 ) ( * 7 2 ) )";
  int length = example.length();
  cout << "Our example is: " <<example << "\n";
  cout <<"It has length: " << length << "\n";
  int a = example[8];
  char c = '0';
  a = a - c;
  cout << a << "\n";
  
  
  int index = 0;
  stack<char> mystack; 
  while(index < length){
    if (example[index] != ' '){
      mystack.push(example[index]);
    }
    index = index + 1;
  }
  
  while (!mystack.empty()){
    cout << ' ' << mystack.top();
    mystack.pop();
    
  }
  cout << '\n';

    
    
    
    
    
    
    
    
    
}
