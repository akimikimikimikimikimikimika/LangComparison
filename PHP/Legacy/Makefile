PAGE=Main
ARGS=
CMD=${shell which php}
UUID=${shell uuid}

run:
	@${CMD} ${PAGE}.php ${ARGS}

docker:
	@docker run -it --name ${UUID} -v "`pwd`":/root/lc php php /root/lc/${PAGE}.php ${ARGS}
	@docker rm ${UUID}