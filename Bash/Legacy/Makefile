PAGE=Main
ARGS=
CMD=${shell which bash}
UUID=${shell uuid}

run:
	@${CMD} ${PAGE}.sh ${ARGS}

docker:
	@docker run -it --name ${UUID} -v "`pwd`":/root/lc bash bash /root/lc/${PAGE}.sh ${ARGS}
	@docker rm ${UUID}