CC = gcc
CFLAGS = -O2 -fno-tree-vectorize -fno-semantic-interposition
ASM_DIR = assembly
BIN_DIR = bin
SRC = $(wildcard *.c)
ASM = $(addprefix $(ASM_DIR)/, $(SRC:.c=.s))
BIN = $(addprefix $(BIN_DIR)/, $(SRC:.c=))

all: $(BIN_DIR) $(BIN)

asm: $(ASM_DIR) $(ASM)

$(ASM_DIR)/%.s: %.c
	$(CC) $(CFLAGS) -S -fverbose-asm $< -o $@

$(ASM_DIR):
	mkdir -p $(ASM_DIR)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(BIN_DIR)/%: %.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(BIN_DIR)
	rm -rf $(ASM_DIR)

.PHONY: all asm clean
