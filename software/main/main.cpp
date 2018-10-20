#include <iostream>

#include <smooth/core/Application.h>

extern "C"
{

class App : public smooth::core::Application
{
public:
    App() : Application(5, std::chrono::milliseconds{100})
    {}

    void tick() override
    {
        std::cout << "Tick!" << std::endl;
    }

};

int app_main()
{
    std::cout << "Hello, ESP32!" << std::endl;
    App a;
    a.start();
    return 0;
}

int main(int argc, const char** argv)
{
    std::cout << "Hello, Linux!" << std::endl;
    App a;
    a.start();
    return 0;
}

}