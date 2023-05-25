#TODO: Get platforms other than linux working
#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------
OBJ_DIR := lib/obj

SRC_DIRS := lib/src

ASM_DIRS := lib/asm

# Inputs
S_FILES := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

CC      := i686-w64-mingw32-gcc

# Options

CFLAGS  :=  -march=pentium3 -fno-asynchronous-unwind-tables

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

default: lib

lib:
	mkdir -p $(OBJ_DIR)
	$(CC) -c $(CFLAGS) $(S_FILES)
	
clean:
	rm -rd $(OBJ_DIR)
	
$(OBJ_DIR)/%.o: %.c
	@echo " CC      "$<
	$(CC) $(CFLAGS) -c -o $@ $< 1>&2
