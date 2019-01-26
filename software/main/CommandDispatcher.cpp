#include "CommandDispatcher.h"

namespace g3
{
    void CommandDispatcher::process(const std::string& command, const std::string& data)
    {
        auto it = execs.find(command);
        if( it != execs.end())
        {
            it->second(command, data);
        }
    }

    void CommandDispatcher::add_command(const std::string& command_topic, Executor executor)
    {
        execs.emplace(command_topic, executor);
    }
}