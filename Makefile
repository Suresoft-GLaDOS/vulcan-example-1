CC:=gcc
CFLAGS:=
LDFLAGS:=

all: test

test: test.o example.o
	$(CC) $(CFLAGS) test.o example.o -o test $(LDFLAGS)

example.o: example.c
	$(CC) $(CFLAGS) -o example.o -c example.c 

test.o: test.c
	$(CC) -o test.o -c test.c

check: test
	test 0;
	test 1;
	test 2;
	test 3;
	test 4;
	test 5;
	test 6;

clean:
	rm -f *.gcov
	rm -f *.gcda *.gcno
	rm -f *.o
	rm -f test