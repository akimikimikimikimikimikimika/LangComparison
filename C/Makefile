CMD=c99
ARGS=""

run exec execute: bin
	@./bin ${ARGS}

build compile bin:
	@${CMD} -o bin *.c

retry: clean run

clean clear:
	@rm -f bin

cmd:
	@echo ${CMD}