cmake_minimum_required(VERSION 3.13)

# set project name: ${PROJECT_NAME}
project(test_cmake)

# set C++ version
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# set compiler options
add_compile_options(-Wall -Wextra -Wpedantic)

# hello.cppとgood_morning.cppをコンパイルして静的ライブラリlibgreetings.aを作成
# add_library(greetings STATIC hello.cpp good_morning.cpp)

# a.outという実行ファイルをmain.cppから作成
add_executable(${PROJECT_NAME}.out main.cpp)

# a.outを作成する際にlibgreetings.aをリンク
# target_link_libraries(a.out greetings)