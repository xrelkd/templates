add_library(fixa_module1 impl/module1_impl.cpp)
target_link_libraries(fixa_module1 PRIVATE spdlog::spdlog)
