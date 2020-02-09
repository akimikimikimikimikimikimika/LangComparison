CMD=clang
ARGS=""

run exec execute: bin
	@./bin ${ARGS}

build compile bin:
	@${CMD} -ObjC -framework Foundation -o bin *.h *.m

retry: clean run

clean clear:
	@rm -f bin

cmd:
	@echo ${CMD}