add_library(fixa_module2 impl/module2_impl.cpp)
target_link_libraries(fixa_module2 PRIVATE spdlog::spdlog)
