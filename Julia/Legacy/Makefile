PAGE=Main
ARGS=
CMD=${shell which julia}
UUID=${shell uuid}

run:
	@${CMD} ${PAGE}.jl ${ARGS}

docker:
	@docker run -it --name ${UUID} -v "`pwd`":/root/lc julia julia /root/lc/${PAGE}.jl ${ARGS}
	@docker rm ${UUID}