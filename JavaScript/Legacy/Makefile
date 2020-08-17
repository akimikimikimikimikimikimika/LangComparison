PAGE=Main
ARGS=
CMD=${shell which node}
UUID=${shell uuid}

run:
	@${CMD} ${PAGE}.js ${ARGS}

docker:
	@docker run -it --name ${UUID} -v "`pwd`":/root/lc node node /root/lc/${PAGE}.js ${ARGS}
	@docker rm ${UUID}