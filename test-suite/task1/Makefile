all: clean interchange distribution run

run:
	gcc -c run.c
	gcc run.o loopinterchange.o loopdistribution.o -o run

interchange:
	gcc -c loopinterchange.c

distribution:
	gcc -c loopdistribution.c

clean: 
	rm -rf run *.o
