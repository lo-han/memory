# Compiler
CC = gcc
# Compiler flags
CFLAGS = -Wall -g
# Source directory
SRC_DIR = ./core
# Object directory
OBJ_DIR = ./obj
# Source files
SRCS = $(wildcard $(SRC_DIR)/*.c)
# Object files
OBJS = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRCS))

# Default rule
all: $(OBJS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@rmdir $(OBJ_DIR)
	@mkdir $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -f $(OBJ_DIR)/*.o