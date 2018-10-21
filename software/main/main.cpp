#include <iostream>

#include <smooth/core/Application.h>

extern "C"
{

class App : public smooth::core::Application
{
public:
    App() : Application(5, std::chrono::milliseconds{1000})
    {}

    void tick() override
    {
        std::cout << "Tick!" << std::endl;
    }

};

#ifdef ESP_PLATFORM
int app_main()
#else
int main(int argc, const char** argv)
#endif
{
    std::cout << "Hello!" << std::endl;
    App a;
    a.start();
    return 0;
}


}