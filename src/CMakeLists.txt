cmake_minimum_required(VERSION 3.13)

# set CMAKE_MODULE_PATH 
set(CMAKE_PREFIX_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/build")

# set project name: ${PROJECT_NAME}
project(test_cmake CXX)

# set C++ version
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# set compiler options
add_compile_options(-Wall -Wextra -Wpedantic)

# conan setting
find_package(ZLIB REQUIRED)

# a.outという実行ファイルをmain.cppから作成
add_executable(${PROJECT_NAME}.out main.cpp)

# a.outを作成する際にlibgreetings.aをリンク
target_link_libraries(${PROJECT_NAME}.out z)