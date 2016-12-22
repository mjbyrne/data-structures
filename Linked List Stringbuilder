#include <iostream>
#include <vector>

using namespace std;

struct Node {
	int startPos;
	int endPos;
	int stringIndex;
	
	Node * next;
	
	// constructor
	Node(int start, int end, int index): startPos(start), endPos(end), 
	                                     stringIndex(index), next(nullptr)
	{ }
};

typedef Node * LinkedList;

void insertAfter(Node * nodeInList, Node * insertNode) {
	
}

void deleteAfter(Node * nodeInList) {
	
}

bool isEmpty(LinkedList lst) {
	return lst == nullptr;
}

class StringBuilder {
	public:
		StringBuilder(string str);
		~StringBuilder();
		
		// accessor methods
		char charAt(int index) const;
		string substring(int start, int end) const;
		string substring(int start) const;
		string toString() const;
		int indexOf(const string &needle, int startPos) const;
		int lastIndexOf(const string &needle, int startPos) const;
		int length() const;
		
		// mutator methods
		void append(string str);
		void deleteChars(int start, int end);
		void deleteChars(int start);
		void insert(int offset, const string str);
		void replace(const string sub, const string replaceStr);
		void reverse();
	private:
		LinkedList positions;
		vector<string> stringParts;
		int len; // length of string
};

StringBuilder::StringBuilder(string str) {
	// constructor: set positions to new LinkedList of one node,
	//              add str to stringParts using vector's push_back method
	//              stringIndex represents the index of the string in stringParts
	//              from startPos to endPos that this node represents 
}

char StringBuilder::charAt(int index) const {
	// returns the character at index
}

string StringBuilder::substring(int start, int end) const {
	// returns the substring from start index start to end
}

string StringBuilder::substring(int start) const {
	// returns the substring from start index to the end of the string
}

int StringBuilder::indexOf(const string &needle, int startPos) const {
	// returns the index of the first occurrence of needle in the string, 
	// starting with index startPos if it exists, -1 otherwise
}

int StringBuilder::lastIndexOf(const string &needle, int startPos) const {
	// returns the index of the last occurrence of needle in the string, 
	// starting with index startPos if it exists, -1 otherwise
}

int StringBuilder::length() const {
	// returns length of represented string
}

string StringBuilder::toString() const {
	// forms and returns a string from the list of Nodes, concatenating the strings
	// that each Node represent in order from the beginning to the end
}

void StringBuilder::append(string str) {
	// adds the string to the end of this one
}

void StringBuilder::deleteChars(int start, int end) {
	// removes the characters from start to end from this string, inclusively
}

void StringBuilder::deleteChars(int start) {
	// removes the characters from start to the end of this string
}

void StringBuilder::insert(int offset, const string str) {
	// inserts str after offset characters
}

void StringBuilder::reverse() {
	// reverses the string that this represents
}

void StringBuilder::replace(const string sub, const string replaceStr) {
	// replaces all occurrence of sub in string with replaceStr
}

StringBuilder::~StringBuilder() {
	// destructor
	// cleanup: need to remove all nodes in linked list (be careful with the order)
}

int main() {
  StringBuilder * s = new StringBuilder("Insert test string here");
  
  return 0;
}
