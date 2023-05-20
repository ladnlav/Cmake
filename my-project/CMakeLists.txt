cmake_minimum_required(VERSION 3.0.0)

# Set the C compiler
set(CMAKE_C_COMPILER "/cygdrive/c/Libs_and_Includes/Cygwin/bin/gcc.exe")

# Set the C++ compiler
set(CMAKE_CXX_COMPILER "/cygdrive/c/Libs_and_Includes/Cygwin/bin/g++.exe")

project ( main )

INCLUDE_DIRECTORIES(
    /cygdrive/c/Libs_and_Includes/Cygwin/usr/include
)

LINK_DIRECTORIES(
    /cygdrive/c/Libs_and_Includes/Cygwin/lib
)

add_executable(main main.c)

target_link_libraries(main PRIVATE gmp)
target_link_libraries(main PRIVATE mpi)