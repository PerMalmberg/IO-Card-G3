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
                    CodeEntered(std::string code)
                    : code(std::move(code))
                    {                        
                    }

                std::string get_code() const { return code; }

                private:
                    std::string code;
            };
        }
    }
}