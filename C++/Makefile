CMD=c++
ARGS=""
BIN=bin

run exec execute: ${BIN}
	@./${BIN} ${ARGS}

build compile ${BIN}:
	@${CMD} -o ${BIN} *.cpp

build-docker:
	@docker run -it --name lc-cpp -v "`pwd`":/root/lc -w /root/lc gcc ${CMD} -o ${BIN} *.cpp
	@docker rm lc-cpp

retry: clean run

clean clear:
	@rm -f ${BIN}

cmd:
	@echo ${CMD}