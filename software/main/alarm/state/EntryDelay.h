#pragma once

#include "BaseState.h"

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            class EntryDelay : public BaseState
            {
                public:
                    EntryDelay(Alarm& alarm)
                        : BaseState(alarm, "EntryDelay")
                        {                            
                        }

                    void code_entered(const std::string& code) override;
            };
        }
    }
}
