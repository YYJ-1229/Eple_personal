CFLAGS = -O3 -Wall
CC = gcc
OBJS = Eple_personal.o
SRCS = Eple_personal.c
.PHONY: test clean

Eple_personal.out: $(OBJS)
	$(CC) -o Eple_personal.out $(CFLAGS) $(OBJS)

Eple_personal.o: $(SRCS)
	$(CC) -c $(CFLAGS) $(SRCS)

test: Eple_personal.out
	@echo "test fork 1GB"
	./Eple_personal.out 1 0
	@echo "test vfork 1GB"
	./Eple_personal.out 1 1

clean:
	@rm -f $(OBJS)
	@rm -f Eple_personal.out
