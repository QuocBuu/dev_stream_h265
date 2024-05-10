#ifndef H265FILEPARSER_HPP
#define H265FILEPARSER_HPP

#include "fileparser.hpp"
#include <optional>

class H265FileParser : public FileParser {
    std::optional<std::vector<std::byte>> previousUnitType19 = std::nullopt;
    std::optional<std::vector<std::byte>> previousUnitType34 = std::nullopt;
    std::optional<std::vector<std::byte>> previousUnitType33 = std::nullopt;

public:
    H265FileParser(std::string directory, uint32_t fps, bool loop);
    void loadNextSample() override;
    std::vector<std::byte> initialNALUS();
};

#endif /* H265FILEPARSER_HPP */
