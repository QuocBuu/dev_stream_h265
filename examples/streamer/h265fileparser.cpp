#include "h265fileparser.hpp"
#include "rtc/rtc.hpp"

#include <fstream>

#ifdef _WIN32
#include <winsock2.h>
#else
#include <arpa/inet.h>
#endif

using namespace std;

H265FileParser::H265FileParser(string directory, uint32_t fps, bool loop): FileParser(directory, ".h265", fps, loop) { }

void H265FileParser::loadNextSample() {
    FileParser::loadNextSample();

    size_t i = 0;
    while (i < sample.size()) {
        assert(i + 4 < sample.size());
        auto lengthPtr = reinterpret_cast<uint32_t*>(sample.data() + i);
        uint32_t length = ntohl(*lengthPtr);
        auto naluStartIndex = i + 4;
        auto naluEndIndex = naluStartIndex + length;
        assert(naluEndIndex <= sample.size());
        auto header = reinterpret_cast<rtc::H265NalUnitHeader*>(sample.data() + naluStartIndex);
        auto type = header->unitType();
        switch (type) {
            case 34:
                previousUnitType34 = {sample.begin() + i, sample.begin() + naluEndIndex};
                break;
            case 33:
                previousUnitType33 = {sample.begin() + i, sample.begin() + naluEndIndex};
                break;
            case 19:
                previousUnitType19 = {sample.begin() + i, sample.begin() + naluEndIndex};
                break;
        }
        i = naluEndIndex;
    }
}

vector<byte> H265FileParser::initialNALUS() {
    vector<byte> units{};
    if (previousUnitType34.has_value()) {
        auto nalu = previousUnitType34.value();
        units.insert(units.end(), nalu.begin(), nalu.end());
    }
    if (previousUnitType33.has_value()) {
        auto nalu = previousUnitType33.value();
        units.insert(units.end(), nalu.begin(), nalu.end());
    }
    if (previousUnitType19.has_value()) {
        auto nalu = previousUnitType19.value();
        units.insert(units.end(), nalu.begin(), nalu.end());
    }
    return units;
}
