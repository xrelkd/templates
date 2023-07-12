configure_file(version.hpp.in version.hpp)
add_library(fixa_application impl/application_impl.cpp)
target_include_directories(fixa_application
                           PUBLIC "${PROJECT_BINARY_DIR}/core/application")

target_link_libraries(fixa_application PRIVATE absl::time spdlog::spdlog
                                               fixa_module1 fixa_module2)
