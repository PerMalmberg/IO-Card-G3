#pragma once

#include <string>

class IAlarmState
{
    public:
        virtual bool is_armed() const = 0;
        virtual bool is_arming() const = 0;
        virtual void arm(const std::string& zone) = 0;
        virtual void disarm() = 0;
        virtual std::string get_current_zone() const = 0;
};