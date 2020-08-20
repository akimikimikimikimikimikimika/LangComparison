ARGS=""
BIN=bin

run exec execute: ${BIN}.exe
	@mono ${BIN}.exe ${ARGS}

build compile ${BIN}.exe:
	@mcs *.cs -out:${BIN}.exe

retry: clean run

clean clear:
	@rm -f ${BIN}.exe