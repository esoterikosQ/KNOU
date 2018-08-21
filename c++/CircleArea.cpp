#include <iostream>
using namespace std;

int main() {
	const double PI = 3.14159;
	double radius;

	cout << "insert the radius:";
	cin >> radius;
	double area = radius * radius * PI;
	cout << "the area of the circle = " << area << endl;
	return 0;

}