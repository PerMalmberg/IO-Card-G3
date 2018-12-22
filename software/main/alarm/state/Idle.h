#pragma once

#include "BaseState.h"

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            class Idle : public BaseState
            {
                public:
                    Idle(Alarm& alarm)
                        : BaseState(alarm, "Idle")
                    {
                    }

                    void code_entered() override;
            };
        }
    }
}
