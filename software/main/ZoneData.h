#pragma once

#include <vector>
#include <string>

class ZoneData
{
    public:
        std::set<std::string> codes{};
        std::set<std::string> inputs{};

        bool has_code(const std::string& code) const
        {
                return codes.find(code) != codes.end();
        }
};