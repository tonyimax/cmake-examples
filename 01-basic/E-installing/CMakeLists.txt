# cmake最低版本
cmake_minimum_required(VERSION 3.5)
# 工程名
project(cmake_examples_install)
############################################################
# 创建动态链接库
############################################################
add_library(cmake_examples_inst SHARED
    src/Hello.cpp
)
# 指定工程包含目录
target_include_directories(cmake_examples_inst
    PUBLIC 
        ${PROJECT_SOURCE_DIR}/include
)
############################################################
# 创建可执行文件
############################################################
add_executable(cmake_examples_inst_bin
    src/main.cpp
)
# 链接动态库
target_link_libraries( cmake_examples_inst_bin
    PRIVATE 
        cmake_examples_inst
)

############################################################
# 安装
############################################################
# 安装二进制文件到bin目录
install (TARGETS cmake_examples_inst_bin
    DESTINATION bin)
# 安装动态库到lib目录
install (TARGETS cmake_examples_inst
    LIBRARY DESTINATION lib)
# 安装头文件到include目录
install(DIRECTORY ${PROJECT_SOURCE_DIR}/include/ 
    DESTINATION include)
# 安装配置文件到etc目录
install (FILES cmake-examples.conf
    DESTINATION etc)
