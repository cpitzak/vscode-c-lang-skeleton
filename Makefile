CC = gcc             # Compiler to use
CFLAGS = -Wall -g    # Compiler flags, -Wall for all warnings, -g for debugging info
OBJ = main.o operations.o   # Object files to create
EXE = main        # Final executable file

# Rule for making the final executable
$(EXE): $(OBJ)
	$(CC) $(CFLAGS) -o $(EXE) $(OBJ)

# Rule for making main.o
main.o: main.c operations.h utils.h
	$(CC) $(CFLAGS) -c main.c

# Rule for making operations.o
operations.o: operations.c operations.h
	$(CC) $(CFLAGS) -c operations.c

# Rule for cleaning up
clean:
	rm -f $(OBJ) $(EXE)

# Dependency to keep object files
.PHONY: clean
