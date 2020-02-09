ARGS=""

run exec execute: bin.jar
	@java -jar bin.jar ${ARGS}

build compile bin.jar:
	@javac *.java
	@jar cfe bin.jar Main *.class
	@rm -f *.class

retry: clean run

clean clear:
	@rm -f bin.jar
	@rm -f *.class