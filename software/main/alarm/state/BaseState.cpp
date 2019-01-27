#include <smooth/core/ipc/Publisher.h>
#include "BaseState.h"
#include "hardware_info.h"
#include "io/digital/I2CSetOutputCmd.h"

namespace g3
{
    namespace alarm
    {
        namespace state
        {
            BaseState::BaseState(Alarm& alarm, const char* name)
                : alarm(alarm), name(name)
            {
            }

            void BaseState::silence_alarm()
            {
                smooth::core::ipc::Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit(I2CDevice::status, INTERNAL_SIREN_CTRL, false));
                smooth::core::ipc::Publisher<ExternalSirenCommand>::publish(ExternalSirenCommand(false));
            }

            void BaseState::sound_alarm()
            {
                smooth::core::ipc::Publisher<I2CSetOutputBit>::publish(I2CSetOutputBit(I2CDevice::status, INTERNAL_SIREN_CTRL, true));
                smooth::core::ipc::Publisher<ExternalSirenCommand>::publish(ExternalSirenCommand(true));
            }
        }
    }
}