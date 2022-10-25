cmake_minimum_required(VERSION 3.22)
project(timer2)

set(CMAKE_CXX_STANDARD 14)

add_executable(timer2 main.cpp)
target_link_libraries(timer2 pthread)
