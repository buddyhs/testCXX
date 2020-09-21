cmake_minimum_required(VERSION 3.5)

project(test LANGUAGES CXX)

# CXX11相关（在这里默认使用C++11进行编译）
include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
elseif(COMPILER_SUPPORTS_CXX0X)
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
else()
     message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has no C++11 support. Please use a different C++ compiler.")
endif()



SET(EXTRA_LIBS ${EXTRA_LIBS} -pthread)
add_definitions(-D__STDC_CONSTANT_MACROS)


file(GLOB example_files RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp)
foreach(example_file ${example_files})
    get_filename_component(example_name ${example_file} NAME_WE)
    ADD_EXECUTABLE(${example_name} ${example_file})
    TARGET_LINK_LIBRARIES(${example_name} ${EXTRA_LIBS})
endforeach(example_file ${example_files})
