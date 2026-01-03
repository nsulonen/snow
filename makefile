CC = gcc
CFLAGS = -std=c99 -Wall -Werror
LDFLAGS = -lraylib

TARGET = app

all: $(TARGET)

$(TARGET): src/main.c
	$(CC) $(CFLAGS) src/main.c $(LDFLAGS) -o $(TARGET)

clean:
	rm -f $(TARGET)
