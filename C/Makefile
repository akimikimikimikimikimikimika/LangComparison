CMD=c99
ARGS=""
BIN=bin

run exec execute: ${BIN}
	@./${BIN} ${ARGS}

build compile ${BIN}:
	@${CMD} -o ${BIN} *.c

build-docker:
	@docker run -it --name lc-c -v "`pwd`":/root/lc -w /root/lc gcc ${CMD} -o ${BIN} *.c
	@docker rm lc-c

retry: clean run

clean clear:
	@rm -f ${BIN}

cmd:
	@echo ${CMD}