C="clang -O3 -std=c17"
CPP="clang++ -O3 -std=c++2a -stdlib=libc++"
FORTRAN="gfortran -O3"
PAGE="Main"
ARGS=

# ヘルプメニュー
# コマンドを指定しない場合にも表示される
help:
	echo "使い方: make [コマンド名]"

# Fortran
f-build:
	@cd Fortran && make build -e CMD=${FORTRAN}
f-run:
	@cd Fortran && make run -e CMD=${FORTRAN} ARGS="${ARGS}"
f-clean:
	@cd Fortran && make clean -e CMD=${FORTRAN}
f-retry f:
	@cd Fortran && make retry -e CMD=${FORTRAN} ARGS="${ARGS}"
f-cmd:
	@echo ${FORTRAN}

# C
c-build:
	@cd C && make build -e CMD=${C}
c-run:
	@cd C && make run -e CMD=${C} ARGS="${ARGS}"
c-clean:
	@cd C && make clean -e CMD=${C}
c-retry c:
	@cd C && make retry -e CMD=${C} ARGS="${ARGS}"
c-cmd:
	@echo ${C}

# C++
cpp-build:
	@cd C++ && make build -e CMD=${CPP}
cpp-run:
	@cd C++ && make run -e CMD=${CPP} ARGS="${ARGS}"
cpp-clean:
	@cd C++ && make clean -e CMD=${CPP}
cpp-retry cpp:
	@cd C++ && make retry -e CMD=${CPP} ARGS="${ARGS}"

# Objective-C
objc-build:
	@cd Objective-C && make build -e CMD=${C}
objc-run:
	@cd Objective-C && make run -e CMD=${C} ARGS="${ARGS}"
objc-clean:
	@cd Objective-C && make clean -e CMD=${C}
objc-retry objc:
	@cd Objective-C && make retry -e CMD=${C} ARGS="${ARGS}"

# Go
go-build:
	@cd Go && make build
go-run:
	@cd Go && make run -e ARGS="${ARGS}"
go-clean:
	@cd Go && make clean
go-retry go:
	@cd Go && make retry -e ARGS="${ARGS}"

# Swift-compiling
swiftc-build:
	@cd Swift-compiling && make build
swiftc-run:
	@cd Swift-compiling && make run -e ARGS="${ARGS}"
swiftc-clean:
	@cd Swift-compiling && make clean
swiftc-retry swiftc:
	@cd Swift-compiling && make retry -e ARGS="${ARGS}"

# Java
java-build:
	@cd Java && make build
java-run:
	@cd Java && make run -e ARGS="${ARGS}"
java-clean:
	@cd Java && make clean
java-retry java:
	@cd Java && make retry -e ARGS="${ARGS}"

# Kotlin-compiling
kotlinc-build:
	@cd Kotlin-compiling && make build
kotlinc-run:
	@cd Kotlin-compiling && make run -e ARGS="${ARGS}"
kotlinc-clean:
	@cd Kotlin-compiling && make clean
kotlinc-retry kotlinc:
	@cd Kotlin-compiling && make retry -e ARGS="${ARGS}"

# Scala-compiling
scalac-build:
	@cd Scala-compiling && make build
scalac-run:
	@cd Scala-compiling && make run -e ARGS="${ARGS}"
scalac-clean:
	@cd Scala-compiling && make clean
scalac-retry scalac:
	@cd Scala-compiling && make retry -e ARGS="${ARGS}"

# Groovy-compiling
groovyc-build:
	@cd Groovy-compiling && make build
groovyc-run:
	@cd Groovy-compiling && make run -e ARGS="${ARGS}"
groovyc-clean:
	@cd Groovy-compiling && make clean
groovyc-retry groovyc:
	@cd Groovy-compiling && make retry -e ARGS="${ARGS}"

# スクリプト言語
swift:
	@swift Swift/${PAGE}.swift ${ARGS}
js javascript:
	@node JavaScript/${PAGE}.js ${ARGS}
pl perl:
	@perl Perl/${PAGE}.pl ${ARGS}
rb ruby:
	@ruby Ruby/${PAGE}.rb ${ARGS}
php:
	@php PHP/${PAGE}.php ${ARGS}
py python:
	@python3 Python/${PAGE}.py ${ARGS}
jl julia:
	@julia Julia/${PAGE}.jl ${ARGS}
lua:
	@lua Lua/${PAGE}.lua ${ARGS}
sh bash:
	@sh Bash/${PAGE}.sh ${ARGS}
ps pwsh powershell:
	@pwsh PowerShell/${PAGE}.ps1 ${ARGS}
kotlin kt:
	@kotlinc -script Kotlin/${PAGE}.kt ${ARGS}
scala:
	@scala Scala/${PAGE}.scala ${ARGS}
groovy:
	@groovy Groovy/${PAGE}.groovy ${ARGS}

# 擬似ファイル名であることを宣言
.PHONY: f c cpp objc go swiftc java kotlinc scalac groovyc swift js javascript pl perl rb ruby php py python jl julia lua sh bash ps pwsh powershell kotlin kt scala groovy