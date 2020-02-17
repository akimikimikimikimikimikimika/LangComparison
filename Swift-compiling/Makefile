CMD=swiftc -O
ARGS=""

run exec execute: bin
	@./bin ${ARGS}

build compile bin:
	@${CMD} -o bin *.swift

retry: clean run

clean clear:
	@rm -f bin

cmd:
	@echo ${CMD}