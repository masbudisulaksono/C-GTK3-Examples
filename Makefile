GTK3  = `pkg-config --cflags --libs gtk+-3.0`
CC    = gcc
Files = $(wildcard *.c)
Names = $(subst .c, ${empty}, ${Files})

%:
	${CC} $@.c -o $@ ${GTK3}

all: ${Names}
	@echo "Compiled all the examples"

clean:
	rm ${Names}