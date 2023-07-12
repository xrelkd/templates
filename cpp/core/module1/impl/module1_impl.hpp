#pragma once

#include "module1/module1.hpp"

namespace fixa::module1 {
class FixaModule1Impl final : public FixaModule1 {
 public:
  ~FixaModule1Impl() override;

  explicit FixaModule1Impl();

  void run() override;
};
}  // namespace fixa::module1
