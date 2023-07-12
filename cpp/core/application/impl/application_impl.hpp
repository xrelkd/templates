#pragma once

#include "application/application.hpp"

namespace fixa::application {
class FixaApplicationImpl final : public FixaApplication {
 public:
  ~FixaApplicationImpl() override;

  explicit FixaApplicationImpl();

  void run() override;

  std::string version() const override;

  int add(const int x, const int y) const;
};
}  // namespace fixa::application
