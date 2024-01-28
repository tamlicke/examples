project(chapterFirstExample)
cmake_minimum_required(VERSION 2.6)

add_definitions(-std=c++0x)
set(CMAKE_CXX_FLAGS "${CMAXE_CXX_FLAGS} -Wall")

set(sources 
   main.cpp 
   SoundexTest.cpp)
add_executable(test ${sources})
target_link_libraries(test gmock gtest pthread)

add_subdirectory(Google_tests)