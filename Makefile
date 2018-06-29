all:
	make so
	$(CXX) main.c libmylib.so -o a1.out

	make lib
	$(CXX) main.c libmylib.a -o a2.out	

so:
	$(CXX) -c -fPIC hello.c world.c
	$(CXX) -shared -Wl,-soname,libmylib.so.1 -o libmylib.so.1.0.0 hello.o world.o

lib:
	$(CXX) -c hello.c world.c
	ar rcs libmylib.a hello.o world.o
clean:
	rm a1.out
	rm a2.out

