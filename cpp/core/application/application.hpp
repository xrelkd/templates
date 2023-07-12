#pragma once

#include <string>

namespace fixa::application {

/**
 * @class FixaApplication fixa application interface
 */
class FixaApplication {
 public:
  virtual ~FixaApplication() = default;

  virtual std::string version() const = 0;

  /// Runs application
  virtual void run() = 0;
};
}  // namespace fixa::application
