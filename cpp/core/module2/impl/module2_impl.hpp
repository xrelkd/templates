#pragma once

#include "module2/module2.hpp"

namespace fixa::module2 {
class FixaModule2Impl final : public FixaModule2 {
 public:
  ~FixaModule2Impl() override;

  explicit FixaModule2Impl();

  void run() override;
};
}  // namespace fixa::module2
