COMPILER=gcc
CFLAGS=-Wall -Wextra -Wpedantic -Wshadow -Wconversion
OUTPUT_DIR=output
SOURCE_DIR=src
BUILD=$(COMPILER) $(CFLAGS)
TARGET=$(SOURCE_DIR)/main.c $(OUTPUT_DIR)/exec.o
PROJECT_NAME=syncer
$(PROJECT_NAME): $(TARGET)
	$(BUILD) $^ -o $(OUTPUT_DIR)/$@
$(OUTPUT_DIR)/exec.o: $(SOURCE_DIR)/exec.c
	$(BUILD) -c $< -o $@
.PHONY: clean
clean:
	rm -f $(OUTPUT_DIR)/*.o
