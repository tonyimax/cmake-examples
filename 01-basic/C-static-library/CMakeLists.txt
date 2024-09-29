# cmake最低版本
cmake_minimum_required(VERSION 3.5)
# 工程名
project(hello_library)

############################################################
# 创建静态库
############################################################

#从源文件生成静态库
add_library(hello_library STATIC 
    src/Hello.cpp
)

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

# 链接静态库hello_library到目标二进制hello_binary
target_link_libraries( hello_binary
    PRIVATE 
        hello_library
)
