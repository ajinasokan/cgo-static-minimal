all: clean staticlib gobin

staticlib:
	cd lib; clang -c -o sum.o sum.c
	cd lib; ar rcs libsum.a sum.o

gobin:
	go build .

clean:
	rm lib/libsum.a lib/sum.o