cmake_minimum_required(VERSION 3.1)

project(task_2)

set(MAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_INSTALL_PREFIX ../install)

include_directories(include/)

add_library(ipb_arithmetic src/subtract.cpp src/sum.cpp)
add_executable(main src/main.cpp)
target_link_libraries(main ipb_arithmetic)

install(TARGETS ipb_arithmetic DESTINATION lib)
install(DIRECTORY include/ DESTINATION include)