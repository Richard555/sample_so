all:
	make so
	gcc main.c libmylib.so -o a1.out

	make lib
	gcc main.c libmylib.a -o a2.out	

so:
	gcc -c -fPIC hello.c world.c
	gcc -shared -Wl,-soname,libmylib.so.1 -o libmylib.so.1.0.0 hello.o world.o

lib:
	gcc -c hello.c world.c
	ar rcs libmylib.a hello.o world.o
clean:
	rm a1.out
	rm a2.out

