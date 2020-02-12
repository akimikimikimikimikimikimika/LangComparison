CMD=go build
ARGS=""
BIN=bin

run exec execute: ${BIN}
	@./${BIN} ${ARGS}

build compile ${BIN}:
	@${CMD} -o ${BIN} *.go

retry: clean run

clean clear:
	@rm -f ${BIN}

cmd:
	@echo ${CMD}