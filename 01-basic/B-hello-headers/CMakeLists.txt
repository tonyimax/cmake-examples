# cmake最小版本号
cmake_minimum_required(VERSION 3.5)
# 工程名
project (hello_headers)
# 参与编译源文件
set(SOURCES
    src/Hello.cpp
    src/main.cpp
)
# 生成可执行文件　
add_executable(hello_headers ${SOURCES})
# 指定工程包含目录
target_include_directories(hello_headers
    PRIVATE 
        ${PROJECT_SOURCE_DIR}/include # 包含目录路径
)
