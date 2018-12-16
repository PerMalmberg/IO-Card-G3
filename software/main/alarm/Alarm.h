#pragma once

#include "state/BaseState.h"
#include <smooth/core/fsm/StaticFSM.h>

namespace g3
{
    namespace alarm
    {
        class Alarm : public smooth::core::fsm::StaticFSM<g3::alarm::state::BaseState, 2 * sizeof(g3::alarm::state::BaseState)>
        {
            public:
                Alarm();

                void code_entered(std::string& code)
                {
                    get_state()->code_entered(code);
                }

                void timeout()
                {
                    get_state()->timeout();
                }
        };
    }
}
