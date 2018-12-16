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
                        : BaseState(alarm)
                        {                            
                        }
            };
        }
    }
}
