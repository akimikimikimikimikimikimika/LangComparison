CMD=clang
ARGS=""
BIN=bin

run exec execute: ${BIN}
	@./${BIN} ${ARGS}

build compile ${BIN}:
	@${CMD} -ObjC -framework Foundation -o ${BIN} *.h *.m

retry: clean run

clean clear:
	@rm -f ${BIN}

cmd:
	@echo ${CMD}