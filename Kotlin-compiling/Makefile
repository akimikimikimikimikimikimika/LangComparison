ARGS=""
BiN=bin

run exec execute: ${BIN}.jar
	@java -jar ${BIN}.jar ${ARGS}

build compile ${BIN}.jar:
	@kotlinc-jvm -include-runtime -d ${BIN}.jar *.kt

retry: clean run

clean clear:
	@rm -f ${BIN}.jar
	@rm -f *.class