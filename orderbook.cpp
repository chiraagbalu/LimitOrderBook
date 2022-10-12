#include <iostream>
#include <fstream>
#include <vector>

int main()
{
    std::ifstream file("/Users/chiraagbalu/LimitOrderBook/test.txt"); // won't open successfully if it doesn't exist
    std::vector<std::string> lines;
    std::string line;
    while (getline(file, line))
    {
        lines.push_back(line);
        std::cout << line << '\n';
    }
    std::cout << "done";
}
