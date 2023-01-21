#include <iostream>
using namespace std;

int main()
{
    double fuel_level, distance, required_fuel;

    cout << "Enter the current fuel level (in gallons): ";
    cin >> fuel_level;
    cout << "Enter the distance of the planned flight (in miles): ";
    cin >> distance;

    required_fuel = distance * 0.5; // Assume fuel consumption of 0.5 gallons per mile

    if (fuel_level >= required_fuel)
        cout << "Adequate fuel for the planned flight." << endl;
    else
        cout << "Not enough fuel for the planned flight. Additional fuel required: " << required_fuel - fuel_level << " gallons." << endl;

    return 0;
}

