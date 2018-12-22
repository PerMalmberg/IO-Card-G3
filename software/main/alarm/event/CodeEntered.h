#pragma once

#include <string>

namespace g3
{
    namespace alarm
    {
        namespace event
        {
            class CodeEntered
            {
                public:
                    CodeEntered() = default;
                    CodeEntered(std::string zone, std::string code)
                    : zone(std::move(zone)), code(std::move(code))
                    {                        
                    }

                std::string get_zone() const { return zone; }
                std::string get_code() const { return code; }

                private:
                    std::string zone;
                    std::string code;
            };
        }
    }
}