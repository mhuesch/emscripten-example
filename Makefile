EMCC = emcc
SOURCES = hello.c
SOURCES_EXTRA = console.c

EMFLAGS = -sEXPORTED_FUNCTIONS="['_say_hello']" -sEXPORTED_RUNTIME_METHODS=ccall,cwrap --post-js post.js --js-library console.js

build: $(SOURCES)
	$(EMCC) $(EMFLAGS) $(SOURCES) -o hello.js

binary: $(SOURCES) $(SOURCES_EXTRA)
	$(CC) $(SOURCES) $(SOURCES_EXTRA) -o hello

test:
	xdg-open 'http://localhost:5000/hello.html'
