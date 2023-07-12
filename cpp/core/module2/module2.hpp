#pragma once

namespace fixa::module2 {

/**
 * @class FixaModule2 fixa module1 interface
 */
class FixaModule2 {
 public:
  virtual ~FixaModule2() = default;

  virtual void run() = 0;
};
}  // namespace fixa::module2
