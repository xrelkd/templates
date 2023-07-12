#include "module1/impl/module1_impl.hpp"

#include <spdlog/spdlog.h>

namespace fixa::module1 {

FixaModule1Impl ::~FixaModule1Impl() {}

FixaModule1Impl ::FixaModule1Impl() {}

void FixaModule1Impl ::run() { spdlog::info("Run Module 1"); }

}  // namespace fixa::module1
