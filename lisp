#include <iostream>
#include <string>
#include <stack>
using namespace std;
// use cpp.sh instead of repl.it

int main() {
    string example = "( + ( - 8 3 -2 ) ( * 78 2 ) )";
    cout << "Our example is: " << example << endl;
  
    int length = example.length();
    string holder;
    int index = 0;
    double numconv = 0;
    double total = 0;
    stack<string> stringstack;
    stack<double> numberstack;
    
    while(index <= length){
         
        if (example[index] == ' ' or index == length){
            if(holder == ""){
                index = index + 1;
            }
            else{
                stringstack.push(holder);
            holder.clear();
            index = index + 1;
            }
        }
        
        else {
            holder += example[index];
            index = index + 1;
        }
        
        if(!stringstack.empty()){
            if(stringstack.top() == ")"){
                stringstack.pop();
                while(stringstack.top() != "+" and stringstack.top() != "-" and stringstack.top() != "*" and stringstack.top() != "/"){
                    numconv = stod(stringstack.top());
                    numberstack.push(numconv);
                    stringstack.pop();
                }
                if(stringstack.top() == "+"){
                    total = numberstack.top();
                    numberstack.pop();
                    while(!numberstack.empty()){
                        total = total + numberstack.top();
                        numberstack.pop();
                    }
                    stringstack.pop(); // gets rid of operator we just used
                    stringstack.pop(); // gets rid of the ( that we no longer need
                    stringstack.push(to_string(total));            
                }

                else if(stringstack.top() == "-"){
                    total = numberstack.top();
                    numberstack.pop();
                    while(!numberstack.empty()){
                        total = total - numberstack.top();
                        numberstack.pop();
                    }
                    stringstack.pop(); // gets rid of operator we just used
                    stringstack.pop(); // gets rid of the ( that we no longer need
                    stringstack.push(to_string(total));
                }


                else if(stringstack.top() == "*"){
                    total = numberstack.top();
                    numberstack.pop();
                    while(!numberstack.empty()){
                        total = total * numberstack.top();
                        numberstack.pop();
                    }
                    stringstack.pop(); // gets rid of operator we just used
                    stringstack.pop(); // gets rid of the ( that we no longer need
                    stringstack.push(to_string(total));
                }


                else if(stringstack.top() == "/"){
                    total = numberstack.top();
                    numberstack.pop();
                    while(!numberstack.empty()){
                        total = total / numberstack.top();
                        numberstack.pop();
                    }
                    stringstack.pop(); // gets rid of operator we just used
                    stringstack.pop(); // gets rid of the ( that we no longer need
                    stringstack.push(to_string(total));
                }
    
            }

        }
    }
    
    cout <<  stringstack.top();
}
