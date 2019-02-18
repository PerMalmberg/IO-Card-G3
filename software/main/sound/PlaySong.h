#pragma once
#include <string>

namespace sound
{
    class PlaySong
    {
        public:
            PlaySong() = default;
            PlaySong(const std::string& name) : name(name) {}
            const std::string get_name() const { return name; }
        private:
            std::string name;
    };
} // sound
