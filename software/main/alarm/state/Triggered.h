#pragma once

#include "BaseState.h"

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            class Triggered : public BaseState
            {
                public:
                    Triggered(Alarm& alarm)
                        : BaseState(alarm, "Triggered")
                        {                            
                        }
            };
        }
    }
}
