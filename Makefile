##
# Compiler and compiler flags
CC = cc
CFLAGS = -Wall -Wextra -pedantic -lfetch

##
# Directories
SRC_DIR = src
INC_DIR = include
BIN_DIR = bin

##
# Files
SRC_FILES = $(SRC_DIR)/*.c
BIN_FILE = $(BIN_DIR)/blocklist.pf

##
# Targets
build: $(BIN_FILE)

clean:
	rm -rf $(BIN_DIR)

$(BIN_FILE):
	mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) $(SRC_FILES) -I$(INC_DIR) -o $@ $^

.PHONY: build clean
