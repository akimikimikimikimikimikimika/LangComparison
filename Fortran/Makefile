CMD=gfortran
ARGS=""
BIN=bin

run exec execute: ${BIN}
	@./${BIN} ${ARGS}

build compile ${BIN}:
	@${CMD} -o ${BIN} *.f95

retry: clean run

clean clear:
	@rm -f ${BIN}

cmd:
	@echo ${CMD}