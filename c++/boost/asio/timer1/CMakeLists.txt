cmake_minimum_required(VERSION 3.22)
project(timer1)

set(CMAKE_CXX_STANDARD 14)

add_executable(timer1 main.cpp)
target_link_libraries(timer1 pthread)
