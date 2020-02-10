ARGS=""

run exec execute: bin.jar
	@java -jar bin.jar ${ARGS}

build compile bin.jar:
	@mkdir /tmp/.groovy
	@ln *.groovy /tmp/.groovy/
	@cp "$$GROOVY_LIBRARY" /tmp/.groovy/bin.jar
	@(cd /tmp/.groovy ; groovyc *.groovy ; jar ufe bin.jar Main *.class)
	@mv /tmp/.groovy/bin.jar bin.jar
	@rm -fr /tmp/.groovy

retry: clean run

clean clear:
	@rm -f bin.jar
	@rm -f *.class
	@rm -fr /tmp/.groovy