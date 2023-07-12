#include "application/impl/application_impl.hpp"

#include <absl/time/clock.h>
#include <absl/time/time.h>
#include <fmt/core.h>
#include <spdlog/spdlog.h>

#include "module1/impl/module1_impl.hpp"
#include "module2/impl/module2_impl.hpp"
#include "version.hpp"

namespace fixa::application {

FixaApplicationImpl ::~FixaApplicationImpl() {}

FixaApplicationImpl ::FixaApplicationImpl() {}

void FixaApplicationImpl ::run() {
  absl::Time time = absl::Now();
  spdlog::info("Run Fixa {}", this->version());
  spdlog::info("Currently, the UTC time is {}",
               absl::FormatTime(time, absl::UTCTimeZone()));

  fixa::module1::FixaModule1Impl module1;
  module1.run();

  fixa::module2::FixaModule2Impl module2;
  module2.run();
}

std::string FixaApplicationImpl::version() const {
  // FIXME: use `std::format`
  return fmt::format("{}.{}.{}", Fixa_VERSION_MAJOR, Fixa_VERSION_MINOR,
                     Fixa_VERSION_PATCH);
}

int FixaApplicationImpl::add(const int x, const int y) const { return x + y; }

}  // namespace fixa::application
