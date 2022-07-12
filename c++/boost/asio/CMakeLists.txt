cmake_minimum_required(VERSION 3.22)
project(asio)

set(CMAKE_CXX_STANDARD 14)
set(Boost_USE_STATIC_LIBS OFF)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_RUNTIME OFF)
find_package(Boost 1.71.0 )

if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    add_executable(asio main.cpp)
    target_link_libraries(asio pthread ${Boost_LIBRARIES})
endif()

