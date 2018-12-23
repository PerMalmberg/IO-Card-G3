#pragma once

#include <string>
#include <chrono>

namespace g3
{
    namespace alarm
    {
        namespace event
        {
            class SensorTriggered
            {
                public:
                    SensorTriggered() = default;
                    SensorTriggered(std::string name, const std::chrono::seconds& entry_delay, const std::chrono::seconds& exit_delay)
                        :   name(std::move(name)),
                            entry_delay(entry_delay),
                            exit_delay(exit_delay)
                    {                        
                    }

                std::string get_name() const { return name; }
                std::chrono::seconds get_entry_delay() const { return entry_delay; }
                std::chrono::seconds get_exit_delay() const { return exit_delay; }

                private:
                    std::string name;
                    std::chrono::seconds entry_delay;
                    std::chrono::seconds exit_delay;
            };
        }
    }
}