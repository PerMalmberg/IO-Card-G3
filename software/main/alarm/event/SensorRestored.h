#pragma once

#include <string>
#include <chrono>

namespace g3
{
    namespace alarm
    {
        namespace event
        {
            class SensorRestored
            {
                public:
                    SensorRestored() = default;
                    SensorRestored(std::string name)
                        :   name(std::move(name))
                    {                        
                    }

                std::string get_name() const { return name; }

                private:
                    std::string name;
            };
        }
    }
}