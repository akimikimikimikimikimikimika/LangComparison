# Cコンパイラ
CLANG="clang -O3 -std=c17" # Clang
GCC="gcc-9 -O3 -std=c17" # GCC
ICC="icc -O3 -std=c11 -march=corei7 -mtune=corei7" # Intel C Compiler

# C++コンパイラ
CLANGPP="clang++ -O3 -std=c++2a -stdlib=libc++" # Clang
GPP="g++-9 -O3 -std=c++2a -pthread" # GCC
ICPC="icpc -O3 -std=c++2a -stdlib=libc++ -march=corei7 -mtune=corei7" # Intel C++ Compiler

# Fortranコンパイラ
GFORTRAN="gfortran -O3 -openmp"
IFORT="ifort -O3 -qopenmp"

# コンパイラの標準構成
C="clang -O0 -std=c17"
CPP="c++ -O0 -std=c++2a -stdlib=libc++"
FORTRAN="gfortran -O0 -openmp"
PAGE="Main"
ARGS=

# ヘルプメニュー
# コマンドを指定しない場合にも表示される
help:
	echo "使い方: make [コマンド名]"

# Fortran
f-build:
	@cd Fortran && make build -e CMD=${FORTRAN}
f-build-gfortran:
	@cd Fortran && make build -e CMD=${GFORTRAN}
f-build-ifort:
	@cd Fortran && make build -e CMD=${IFORT}
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
c-build-clang:
	@cd C && make build -e CMD=${CLANG} BIN=bin-clang
c-build-gcc:
	@cd C && make build -e CMD=${GCC} BIN=bin-gcc
c-build-icc:
	@cd C && make build -e CMD=${ICC} BIN=bin-icc
c-build-docker:
	@cd C && make build-docker -e CMD=${GCC} BIN=bin-docker
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
	@cd C++ && make build -e CMD=${CPP} BIN=bin
cpp-build-clang:
	@cd C++ && make build -e CMD=${CLANGPP} BIN=bin-clang
cpp-build-gcc:
	@cd C++ && make build -e CMD=${GPP} BIN=bin-gcc
cpp-build-icc:
	@cd C++ && make build -e CMD=${ICPC} BIN=bin-icc
cpp-build-docker:
	@cd C++ && make build-docker -e CMD=${GPP} BIN=bin-docker
cpp-run:
	@cd C++ && make run -e CMD=${CPP} ARGS="${ARGS}"
cpp-clean:
	@cd C++ && make clean -e CMD=${CPP}
cpp-retry cpp:
	@cd C++ && make retry -e CMD=${CPP} ARGS="${ARGS}"

# Objective-C
objc-build:
	@cd Objective-C && make build -e CMD=${C}
objc-build-clang:
	@cd Objective-C && make build -e CMD=${CLANG} BIN=bin-clang
objc-build-gcc:
	@cd Objective-C && make build -e CMD=${GCC} BIN=bin-gcc
objc-build-icc:
	@cd Objective-C && make build -e CMD=${ICC} BIN=bin-icc
objc-run:
	@cd Objective-C && make run -e CMD=${C} ARGS="${ARGS}"
objc-clean:
	@cd Objective-C && make clean -e CMD=${C}
objc-retry objc:
	@cd Objective-C && make retry -e CMD=${C} ARGS="${ARGS}"

# C#
csharp-build:
	@cd C# && make build -e
csharp-run:
	@cd C# && make run -e ARGS="${ARGS}"
csharp-clean:
	@cd C# && make clean -e
csharp-retry csharp:
	@cd C# && make retry -e ARGS="${ARGS}"

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
	@cd JavaScript && make run -e PAGE=${PAGE} ARGS="${ARGS}"
js-docker javascript-docker:
	@cd JavaScript && make docker -e PAGE=${PAGE} ARGS="${ARGS}"
pl perl:
	@cd Perl && make run -e PAGE=${PAGE} ARGS="${ARGS}"
pl-docker perl-docker:
	@cd Perl && make docker -e PAGE=${PAGE} ARGS="${ARGS}"
rb ruby:
	@cd Ruby/Legacy && make run -e PAGE=${PAGE} ARGS="${ARGS}"
rb-docker ruby-docker:
	@cd Ruby/Legacy && make docker -e PAGE=${PAGE} ARGS="${ARGS}"
php:
	@cd PHP/Legacy && make run -e PAGE=${PAGE} ARGS="${ARGS}"
php-docker:
	@cd PHP/Legacy && make docker -e PAGE=${PAGE} ARGS="${ARGS}"
py python:
	@cd Python/Legacy && make run -e PAGE=${PAGE} ARGS="${ARGS}"
py-docker python-docker:
	@cd Python/Legacy && make docker -e PAGE=${PAGE} ARGS="${ARGS}"
jl julia:
	@cd Julia && make run -e PAGE=${PAGE} ARGS="${ARGS}"
jl-docker julia-docker:
	@cd Julia && make docker -e PAGE=${PAGE} ARGS="${ARGS}"
lua:
	@lua Lua/${PAGE}.lua ${ARGS}
sh bash:
	@cd Bash && make run -e PAGE=${PAGE} ARGS="${ARGS}"
sh-docker bash-docker:
	@cd Bash && make docker -e PAGE=${PAGE} ARGS="${ARGS}"
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