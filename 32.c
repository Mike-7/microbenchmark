#include <stdio.h>
#include <stdint.h>

int main(void)
{
    int32_t result = 0;
    for (volatile int32_t i = 0; i < 1000000; i++) {
        result += 1;
    }
    return 0;
}
