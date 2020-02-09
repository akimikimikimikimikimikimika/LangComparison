CMD=go build
ARGS=""

run exec execute: bin
	@./bin ${ARGS}

build compile bin:
	@${CMD} -o bin *.go

retry: clean run

clean clear:
	@rm -f bin

cmd:
	@echo ${CMD}