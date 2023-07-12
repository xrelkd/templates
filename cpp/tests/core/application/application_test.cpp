#include <gmock/gmock.h>
#include <gtest/gtest.h>

#include "application/impl/application_impl.hpp"

TEST(Application, Construct) {
  fixa::application::FixaApplicationImpl app;

  EXPECT_EQ(2, app.add(1, 1));
}
