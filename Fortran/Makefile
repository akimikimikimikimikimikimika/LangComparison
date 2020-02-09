CMD=gfortran
ARGS=""

run exec execute: bin
	@./bin ${ARGS}

build compile bin:
	@${CMD} -openmp -o bin *.f95

retry: clean run

clean clear:
	@rm -f bin

cmd:
	@echo ${CMD}