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
                    BaseState(Alarm& alarm)
                        : alarm(alarm)
                    {
                    }

                    virtual void enter_state() {}
                    virtual void leave_state() {}

                    virtual void code_entered(std::string& code) {}
                    virtual void timeout() {}

                protected:
                    g3::alarm::Alarm& alarm;
                private:
            };
        }
    }
}
