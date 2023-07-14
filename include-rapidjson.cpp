#include "rapidjson/document.h"

int main() {
    rapidjson::Document document;
    document.Parse("{\"hello\":\"world\"}");

    return 0;
}