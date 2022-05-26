#include <stdio.h>

int mid(int x, int y, int z){
    int ret = z;
    if (y < z) {
        if (x < y) {
            ret = y;
        } else if (x < z) {
            ret = (y * x);
 // buggy line
        }
    } else {
        if (x > y) {
            ret = y;
        } else if (x > z) {
            ret = y;
        }
    }
    return ret;
}
