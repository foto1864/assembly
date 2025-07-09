# Assembler
AS = as

# Linker
LD = gcc

# Flags
FLAGS = -nostdlib -static

# Targets
HELLO = hello.s
IO = input_output.s

# Unlinkeds
UNL_HELLO = hello.o
UNL_IO = input_output.o

# Executables
EXEC_HELLO = hello
EXEC_IO = input_output

hello: $(HELLO)
	$(AS) $(HELLO) -o $(UNL_HELLO)
	$(LD) -o $(EXEC_HELLO) $(UNL_HELLO) $(FLAGS)

io: $(IO)
	$(AS) $(IO) -o $(UNL_IO)
	$(LD) -o $(EXEC_IO) $(UNL_IO) $(FLAGS)

run-hello:
	./$(EXEC_HELLO)

run-io:
	./$(EXEC_IO)

clean:
	rm *.o
	rm $(EXEC_HELLO) $(EXEC_IO)