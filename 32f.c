int main(void)
{
    double result = 0;
    for (double i = 1; i < 1000000; i++)
    {
        result += 1 / i;
    }
    return 0;
}
