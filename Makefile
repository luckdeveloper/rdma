CC=gcc
CFLAGS=-Wall -Werror -O2
INCLUDES=
LDFLAGS=-libverbs
LIBS=-pthread -lrdmacm

SRCS=example1.c
OBJS=$(SRCS:.c=.o)
PROG=example1

all: $(PROG)

debug: CFLAGS=-Wall -Werror -g -DDEBUG
debug: $(PROG)

.c.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $@ $<

$(PROG): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ $(OBJS) $(LDFLAGS) $(LIBS)

clean:
	$(RM) *.o *~ $(PROG)
