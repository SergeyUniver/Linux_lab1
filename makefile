all: main

clean:
	rm -rf main *.o *.so
	rm -rf print

libs:
	gcc -fPIC -c hello.c -o hello.o
	gcc -shared -olibhello.so hello.o
	gcc -fPIC -c bye.c -o bye.o
	gcc -shared -olibbye.so bye.o

main: libs
	gcc main.c -o print -L ./ -lhello -lbye
