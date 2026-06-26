#include <stdio.h>
#include <stdint.h>

int main(void)
{
    int64_t result = 0;
    for (int64_t i = 0; i < 1000000; i++)
    {
        result += 1;
    }
    return 0;
}
