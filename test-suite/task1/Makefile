all: clean interchange run

run:
	gcc -c run.c
	gcc run.o loopinterchange.o -o run

interchange:
	gcc -c loopinterchange.c


clean: 
	rm -rf run *.o
