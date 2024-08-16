CFLAGS := -Wall -Wextra -pedantic -std=c99
CRFLAGS := -O2 -Wno -std=c99

kilo: src/kilo.c
	@echo "Compiling Kilo in dev mode"
	@$(CC) $< -o bin/$@ $(CFLAGS)

asan: src/kilo.c
	@echo "Compiling Kilo in asan mode"

install: src/kilo.c
	$(CC) $< -o build/kilo $(CRFLAGS)

clean:
	rm -f build/*