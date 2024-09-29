# 生成makefile到build目录
cmake -DCMAKE_INSTALL_PREFIX=install -Bbuild -S. &&
# 编译并安装	
cmake --build build && ls build && ./build/cmake_examples_inst_bin && cmake --install build &&
# 写入安装路径到配置文件
echo "/home/dev/Desktop/cmake-examples/01-basic/E-installing/install/lib" > ./cmake-examples.conf && 
# 添加配置文件到ld.so.conf.d并验证及重新加载
sudo cp *.conf /etc/ld.so.conf.d/. && sudo ldconfig -v && sudo ldconfig && 
# 启动安装目录的可执行文件或加载依赖libcmake_examples_inst.so
install/bin/cmake_examples_inst_bin
