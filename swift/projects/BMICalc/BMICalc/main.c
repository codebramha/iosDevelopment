//
//  main.c
//  BMICalc
//
//  Created by harikanth on 9/5/16.
//  Copyright © 2016 Code Bramha. All rights reserved.
//

#include <stdio.h>


//declaration of a struct person
typedef struct {
    float heightInMeters;
    int weightInKgs;
}Person;

float bodyMassIndex(Person p){
    return p.weightInKgs / (p.heightInMeters * p.heightInMeters);
    
}

int main(int argc, const char * argv[]) {
    
    Person person;
    person.weightInKgs = 70;
    person.heightInMeters = 1.8;
    float bmi = bodyMassIndex(person);
    printf("person weight in %i kgs\n", person.weightInKgs);
    printf("Person height is %.2f m\n", person.heightInMeters);
    printf("The BMI of the person is %.2f\n", bmi);
    return 0;
}
