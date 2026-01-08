CC = gcc
CFLAGS = -std=c17-Wall -Wextra -Werror
LDFLAGS = -lraylib

TARGET = app

all: $(TARGET)

$(TARGET): src/main.c
	$(CC) $(CFLAGS) src/main.c $(LDFLAGS) -o $(TARGET)

clean:
	rm -f $(TARGET)
