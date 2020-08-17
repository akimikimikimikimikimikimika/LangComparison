ARGS=""
BIN=bin

run exec execute: ${BIN}.jar
	@java -jar ${BIN}.jar ${ARGS}

build compile ${BIN}.jar:
	@javac *.java
	@jar cfe ${BIN}.jar Main *.class
	@rm -f *.class

retry: clean run

clean clear:
	@rm -f ${BIN}.jar
	@rm -f *.class