#pragma once

#include <string>

namespace Proj {

class Logger
{
public:
    static void print(const std::string&);

    static void printHello(const std::string&);

    static void printHelloWorld();
};

} // end namespace Proj
