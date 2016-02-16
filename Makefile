CC=gcc

librand.a: rand.c
	gcc -c -o rand.o rand.c
	ar rcs librand.a rand.o

librand.so: rand.c
	gcc -fPIC -c -o rand.o rand.c
	ar rcs librand.so rand.o

random: main.c
	gcc -static -o random1 main.c -L. -lrand
	gcc -o random2 main.c -L. -lrand
