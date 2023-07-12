#pragma once

namespace fixa::module1 {

/**
 * @class FixaModule1 fixa module1 interface
 */
class FixaModule1 {
 public:
  virtual ~FixaModule1() = default;

  virtual void run() = 0;
};
}  // namespace fixa::module1
