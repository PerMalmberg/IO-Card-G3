#pragma once

#include "BaseState.h"

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            class Armed : public BaseState
            {
                public:
                    Armed(Alarm& alarm)
                        : BaseState(alarm, "Armed")
                        {                            
                        }

                    void code_entered(const std::string& code) override;

                    bool is_armed() const { return true; }
            };
        }
    }
}
