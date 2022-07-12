cmake_minimum_required(VERSION 3.22)
project(timer4)

set(CMAKE_CXX_STANDARD 14)

add_executable(timer4 main.cpp)
target_link_libraries(timer4 pthread)
