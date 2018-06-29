arm-linux-gnueabihf-gcc -c -fPIC hello.c world.c
arm-linux-gnueabihf-gcc -shared -Wl,-soname,libmylib.so.1 -o libmylib.so.1.0.0 hello.o world.o

ln -s libmylib.so.1.0.0 libmylib.so
ln -s libmylib.so.1.0.0 libmylib.so.1
