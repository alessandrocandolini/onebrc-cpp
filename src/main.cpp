#include <iostream>
#include <string>
#include <vector>

int main() {
    const std::vector<std::string> words{"Hello", "world"};
    std::cout << words.front() << ", " << words.back() << "!\n";
}
