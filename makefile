TARGET = ./main.exe

.PHONY: all, build, clean, run

${TARGET}:
	gcc -I C:\Libs_and_Includes\gmp\include -L C:\Libs_and_Includes\gmp\lib gmpExample.cpp -lgmpxx -lgmp -o ${TARGET}

all: clean build

build: ${TARGET}

clean:
	rm -rf ${TARGET}

run:
	${TARGET}