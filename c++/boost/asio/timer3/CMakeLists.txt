cmake_minimum_required(VERSION 3.22)
project(timer3)

set(CMAKE_CXX_STANDARD 14)

add_executable(timer3 main.cpp)
target_link_libraries(timer3 pthread)
