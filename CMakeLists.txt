cmake_minimum_required(VERSION 3.1.0)
project(ReactPhysics3D)

file(GLOB INCLUDES "include")
file(GLOB_RECURSE SRC_FILES "src/*.cpp")

add_library(ReactPhysics3D ${SRC_FILES})

target_include_directories(ReactPhysics3D PRIVATE "${INCLUDES}")
set (ReactPhysics3D_INCLUDES "${INCLUDES}" PARENT_SCOPE)