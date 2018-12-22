#pragma once

#include <smooth/core/logging/log.h>

namespace g3
{
    namespace alarm
    {
        class Alarm;

        namespace state
        {
            class BaseState
            {
                public:
                    BaseState(Alarm& alarm, const char* name)
                        : alarm(alarm), name(name)
                    {
                    }

                    virtual void enter_state() {}
                    virtual void leave_state() {}

                    virtual void code_entered(const std::string& code) {}
                    virtual void exit_timer_timeout() {}
                    virtual void entry_timer_timeout() {}

                    virtual bool is_armed() const { return false; }

                    const std::string& get_state_name() const { return name; }

                protected:
                    g3::alarm::Alarm& alarm;
                private:
                    std::string name;
            };
        }
    }
}
