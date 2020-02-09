ARGS=""

run exec execute: bin.jar
	@java -jar bin.jar ${ARGS}

build compile bin.jar:
	@kotlinc -include-runtime -d bin.jar *.kt

retry: clean run

clean clear:
	@rm -f bin.jar
	@rm -f *.class