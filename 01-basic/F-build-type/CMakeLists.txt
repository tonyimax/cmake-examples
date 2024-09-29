# cmake最低版本
cmake_minimum_required(VERSION 3.5)
# 编译配置判断
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  message("Setting build type to 'RelWithDebInfo' as none was specified.")
  set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "Choose the type of build." FORCE)
  # 设置cmake-gui可识别的编译配置属性值
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release"
    "MinSizeRel" "RelWithDebInfo")
endif()
# 工程名
project (build_type)
# 生成可执行文件
add_executable(cmake_examples_build_type main.cpp)
