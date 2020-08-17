PAGE=Main
ARGS=
CMD=${shell which ruby}
UUID=${shell uuid}

run:
	@${CMD} ${PAGE}.rb ${ARGS}

docker:
	@docker run -it --name ${UUID} -v "`pwd`":/root/lc ruby ruby /root/lc/${PAGE}.rb ${ARGS}
	@docker rm ${UUID}