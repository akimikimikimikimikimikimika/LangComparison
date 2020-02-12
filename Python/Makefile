PAGE=Main
ARGS=
CMD=${shell which python3}
UUID=${shell uuid}

run:
	@${CMD} ${PAGE}.py ${ARGS}

docker:
	@docker run -it --name ${UUID} -v "`pwd`":/root/lc python python3 /root/lc/${PAGE}.py ${ARGS}
	@docker rm ${UUID}