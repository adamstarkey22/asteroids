cmake_minimum_required(VERSION 3.2)

project(
    asteroids
    LANGUAGES CXX
)

add_executable(
    asteroids
    src/main.cpp
)

add_subdirectory(ext/SFML)
include_directories(asteroids ext/SFML/include)
target_link_libraries(asteroids sfml-graphics)