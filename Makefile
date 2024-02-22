EMCC = emcc
SOURCES = hello.c
SOURCES_EXTRA = console.c
HTTP_PORT=8080

EMFLAGS = -sEXPORTED_FUNCTIONS="['_say_hello','_echo']" -sEXPORTED_RUNTIME_METHODS=ccall,cwrap --post-js post.js --js-library console.js

build: $(SOURCES)
	$(EMCC) $(EMFLAGS) $(SOURCES) -o hello.js

binary: $(SOURCES) $(SOURCES_EXTRA)
	$(CC) $(SOURCES) $(SOURCES_EXTRA) -o hello

serve:
	miniserve -p $(HTTP_PORT) .

open:
	xdg-open 'http://localhost:$(HTTP_PORT)/hello.html'
