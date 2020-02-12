PAGE=Main
ARGS=
CMD=${shell which perl}
UUID=${shell uuid}

run:
	@${CMD} ${PAGE}.pl ${ARGS}

docker:
	@docker run -it --name ${UUID} -v "`pwd`":/root/lc perl perl /root/lc/${PAGE}.pl ${ARGS}
	@docker rm ${UUID}