#include <iostream>
#include <string>
#include <stack>
// #include <cstdlib>
using namespace std;
// use cpp.sh instead of repl.it

int main() {
  string example = "( + ( - 8 3 -2 ) ( * 78 2 ) )";
  int length = example.length();
  string holder;
  int index = 0;
  double numconv = 0;
  double total = 0;
  stack<string> stringstack;
  stack<int> numberstack;
  while(index < length){
    if(example[index] == ')'){
        while(stringstack.top() != '+' and stringstack.top() != '-' and stringstack.top() != '*' and stringstack.top() != '/'){
            numconv = stod(stringstack.top());
            numberstack.push(numconv);
            stringstack.pop();
        }
        if(stringstack.top() == '+'){
            total = numberstack.top();
            numberstack.pop();
            while(!numberstack.empty()){
                total = total + numberstack.top();
                numberstack.pop();
            }
            stringstack.pop();
            stringstack.pop();
            stringstack.push(to_string(total));
        }
        index = index + 1;
         
    else if (example[index] == ' ' or index == length - 1){
      stringstack.push(holder);
      holder.clear();
    }
    else {
    holder += example[index];
    }
    index = index + 1;
  }
  
  while(!stringstack.empty()){
    cout << stringstack.top() << endl;
    stringstack.pop();
  }

}
