# cmake最低版本
cmake_minimum_required(VERSION 3.5)
# 工程名
project(hello_library)

############################################################
# 创建一个动态链接库
############################################################
add_library(hello_library SHARED 
    src/Hello.cpp
)
# 链接库别名
add_library(hello::library ALIAS hello_library)
# 指定工程包含目录
target_include_directories(hello_library
    PUBLIC 
        ${PROJECT_SOURCE_DIR}/include
)

############################################################
# 创建可执行文件
############################################################
add_executable(hello_binary
    src/main.cpp
)
#链接动态库
target_link_libraries( hello_binary
    PRIVATE 
        hello::library
)
