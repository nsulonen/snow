CC = gcc
CFLAGS = -std=c99 -Wall -Werror
LDFLAGS = -lraylib

TARGET = app

all: $(TARGET)

$(TARGET): bin/main.c
	$(CC) $(CFLAGS) bin/main.c $(LDFLAGS) -o $(TARGET)

clean:
	rm -f $(TARGET)
