#include "App.h"


#ifdef ESP_PLATFORM
extern "C" void app_main()
#else
    int main(int /*argc*/, char** /*argv*/)
#endif
{
    g3::App app{};
    app.start();
}
