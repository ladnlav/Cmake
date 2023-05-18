# Define the target output file name as the current folder name
TARGET = $(notdir $(CURDIR)).exe

# Define the include directory for additional header files
IncDIR = \
	utils

# Define the directory containing the source files
SRC_DIR = .

# Define the extension of the source files
SRC_EXT = c

# Detect all the source files in the specified directory
SRCS = $(wildcard $(SRC_DIR)/*.$(SRC_EXT))

# Define the libraries to link against
LIBS = -llibgmp -llibgmpxx

# Define the directory containing the libraries
LIB_DIR = C:\Libs_and_Includes\gmp\lib

# Define the directory containing the library headers
LIB_INC_DIR = C:\Libs_and_Includes\gmp\include

# Specify the include directories for the compiler
INC_DIRS = -I$(IncDIR) -I$(LIB_INC_DIR)

# Specify the additional library directory for the linker
LDFLAGS = -L$(LIB_DIR)

.PHONY: all build clean run

# Rule to build the target output file
$(TARGET): $(SRCS)
	gcc $(INC_DIRS) $(LDFLAGS) $(SRCS) $(LIBS) -o $(TARGET)
#	gcc -I (path to your include files) -L (path to your libs) src.c -lgmp (name of your libs) -o src.exe
#	gcc $(SRCS) -o hello.exe

# Rule to clean the generated output file
clean:
	rm -rf $(TARGET)

# Rule to build the target by default
all: clean build

# Rule to build the target
build: $(TARGET)

# Rule to run the target output file
run:
	./$(TARGET)