//
// Created by permal on 11/28/17.
//

#include "AnalogCycler.h"
#include <thread>
#include <smooth/core/logging/log.h>
#include <smooth/core/logging/log.h>

using namespace std::chrono;
using namespace smooth::application::io;

bool AnalogCycler::cycle()
{
    auto curr = static_cast<int>(current);
    if (++curr > static_cast<int>(ADS1115::Multiplexer::Single_AIN3))
    {
        curr = ADS1115::Multiplexer::Single_AIN0;
    }

    current = static_cast<ADS1115::Multiplexer>(curr);

    return analog->configure(current,
                                 ADS1115::Range::FSR_6_144,
                                 ADS1115::OperationalMode::SingleShot,
                                 ADS1115::DataRate::SPS_860,
                                 ADS1115::ComparatorMode::Traditional,
                                 ADS1115::Alert_Ready_Polarity::ActiveLow,
                                 ADS1115::LatchingComparator::NonLatching,
                                 ADS1115::AssertStrategy::DisableAssertion,
                                 // Enable conversion ready-signaling by setting hi/low threshold
                                 std::numeric_limits<uint16_t>::min(),
                                 std::numeric_limits<uint16_t>::max());
}
