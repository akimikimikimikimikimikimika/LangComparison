ARGS=""
BIN=bin

run exec execute: ${BIN}.jar
	@java -jar ${BIN}.jar ${ARGS}

build compile ${BIN}.jar:
	@mkdir /tmp/.groovy
	@ln *.groovy /tmp/.groovy/
	@cp "$$GROOVY_LIBRARY" /tmp/.groovy/${BIN}.jar
	@(cd /tmp/.groovy ; groovyc *.groovy ; jar ufe ${BIN}.jar Main *.class)
	@mv /tmp/.groovy/${BIN}.jar ${BIN}.jar
	@rm -fr /tmp/.groovy

retry: clean run

clean clear:
	@rm -f ${BIN}.jar
	@rm -f *.class
	@rm -fr /tmp/.groovy