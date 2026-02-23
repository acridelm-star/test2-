#include "disk.h"
#include <cmath>

Disk::Disk(double x, double y, double r){
    this->x = x;
    this->y = y;
    this->radius = r;
}

void Disk::move(double dx, double dy){
    this->x += dx;
    this->y += dy;
}
// calculate the euclidean distance between the disks
double Disk::distance(Disk& other){

    double dx = this->x - other.x;
    double dy = this->y - other.y;
    return sqrt(dx*dx + dy*dy); 

}