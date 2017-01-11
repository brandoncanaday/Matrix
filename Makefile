all: p1

run: p1
	./p1

p1: p1.o Matrix.o
	g++ -o p1 p1.o Matrix.o

p1.o: p1.cpp
	g++ -c -g -Wall -std=c++14 -pedantic-errors p1.cpp

Matrix.o: Matrix.cpp
	g++ -c -g -Wall -std=c++14 -pedantic-errors Matrix.cpp

clean: 
	rm -f *.o
	rm -f *~
	rm -f Matrix
	rm -f p1