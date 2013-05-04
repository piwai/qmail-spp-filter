CC=gcc
CFLAGS=-Wall -Werror -I/usr/include/cdb
SRC=qmail-spp-filter.c
CDBLIBS=/usr/lib/cdb.a /usr/lib/unix.a /usr/lib/buffer.a /usr/lib/alloc.a /usr/lib/byte.a
BIN=qmail-spp-filter
PLUGINSDIR=/var/qmail/plugins


all: $(BIN)

$(BIN):
	$(CC) $(CFLAGS) $(SRC) $(CDBLIBS) -o $@

install:
	install $(BIN) $(PLUGINSDIR)

clean:
	rm -f $(BIN)

.PHONY: all
