#include "logger.hpp"

#include <iostream>
#include <format>

namespace Proj {

void Logger::print(const std::string& str)
{
    std::printf("%s\n", str.c_str());
}

void Logger::printHello(const std::string& str)
{
    Logger::print(std::format("Hello, {}!", str));
}

void Logger::printHelloWorld()
{
    Logger::print("Hello, World!");
}

} // end namespace Proj