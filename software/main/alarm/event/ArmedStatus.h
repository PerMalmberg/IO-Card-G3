#pragma once

class ArmedStatus
{
    public:
        ArmedStatus() = default;

        explicit ArmedStatus(bool armed)
            : armed(armed)
        {
        }

        [[nodiscard]] bool is_armed() const
        {
            return armed;
        }

    private:
        bool armed{false};
};
