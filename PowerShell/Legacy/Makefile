PAGE=Main
ARGS=
CMD=${shell which pwsh}
UUID=${shell uuid}

run:
	@${CMD} ${PAGE}.jl ${ARGS}

docker:
	@docker run -it --name ${UUID} -v "`pwd`":/root/lc mcr.microsoft.com/powershell pwsh /root/lc/${PAGE}.ps1 ${ARGS}
	@docker rm ${UUID}