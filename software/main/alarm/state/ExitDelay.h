#pragma once

#include "BaseState.h"

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            class ExitDelay : public BaseState
            {
                public:
                    ExitDelay(Alarm& alarm)
                        : BaseState(alarm)
                        {                            
                        }
            };
        }
    }
}
