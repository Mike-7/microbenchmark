int main(void)
{
    long long result = 0;
    for (long long i = 1; i < 1000000; i++)
    {
        result += 1 / i;
    }
    return 0;
}
