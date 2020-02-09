ARGS=""

run exec execute: bin.jar
	@java -jar bin.jar ${ARGS}

build compile bin.jar:
	@mkdir /tmp/.scala
	@ln *.scala /tmp/.scala/
	@cp "$$SCALA_LIBRARY" /tmp/.scala/bin.jar
	@(cd /tmp/.scala ; scalac *.scala ; jar ufe bin.jar Main *.class)
	@mv /tmp/.scala/bin.jar bin.jar
	@rm -fr /tmp/.scala

retry: clean run

clean clear:
	@rm -f bin.jar
	@rm -f *.class