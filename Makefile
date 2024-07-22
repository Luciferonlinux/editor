CFLAGS := -Wall -Wextra -pedantic -std=c99

kilo: src/kilo.c
	@echo "Compiling Kilo"
	@$(CC) $(CFLAGS) $< -o bin/$@

clean:
	rm -f bin/*