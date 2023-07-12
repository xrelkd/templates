#include "module2/impl/module2_impl.hpp"

#include <spdlog/spdlog.h>

namespace fixa::module2 {

FixaModule2Impl ::~FixaModule2Impl() {}

FixaModule2Impl ::FixaModule2Impl() {}

void FixaModule2Impl ::run() { spdlog::info("Run Module 2"); }

}  // namespace fixa::module2
