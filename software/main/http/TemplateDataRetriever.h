#pragma once

#include <smooth/application/network/http/regular/ITemplateDataRetriever.h>
#include <unordered_map>
#include <mutex>

namespace http
{
    class DataRetriever
            : public smooth::application::network::http::regular::ITemplateDataRetriever
    {
        public:
            std::string get(const std::string& key) const override
            {
                std::unique_lock<std::mutex> lock{mut};
                std::string res;

                try
                {
                    res = data.at(key);
                }
                catch (std::out_of_range&)
                {
                }

                return res;
            }

            void add(const std::string&& key, std::string&& value)
            {
                std::unique_lock<std::mutex> lock{mut};
                data.emplace(key, value);
            }

        private:
            mutable std::mutex mut{};
            std::unordered_map<std::string, std::string> data{};
    };
}