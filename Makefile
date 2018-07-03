all:
	make so
	$(CXX) main.c libmylib.so.1.0.1 -o a1.out
#	$(CXX) main.c -Wl,-R -Wl,/usr/lib/mylib libmylib.so.1.0.1 -o a1.out


#	make lib
#	$(CXX) main.c libmylib.a -o a2.out	

so:
	$(CXX) -c -fPIC hello.c world.c
	$(CXX) -shared -Wl,-soname,libmylib.so.1 -o libmylib.so.1.0.1 hello.o world.o
ln:
	ln -s libmylib.so.1.0.1 libmylib.so.1
	ln -s libmylib.so.1.0.1 libmylib.so

lib:
	$(CXX) -c hello.c world.c
	ar rcs libmylib.a hello.o world.o
clean:
	rm a1.out
	rm a2.out
	rm libmylib.so.1.0.1
	rm libmylib.so.1
	rm libmylib.so

