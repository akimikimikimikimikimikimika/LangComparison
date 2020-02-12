ARGS=""
BIN=bin

run exec execute: ${BIN}.jar
	@java -jar ${BIN}.jar ${ARGS}

build compile ${BIN}.jar:
	@mkdir /tmp/.scala
	@ln *.scala /tmp/.scala/
	@cp "$$SCALA_LIBRARY" /tmp/.scala/${BIN}.jar
	@(cd /tmp/.scala ; scalac *.scala ; jar ufe ${BIN}.jar Main *.class)
	@mv /tmp/.scala/${BIN}.jar ${BIN}.jar
	@rm -fr /tmp/.scala

retry: clean run

clean clear:
	@rm -f ${BIN}.jar
	@rm -f *.class
	@rm -fr /tmp/.scala