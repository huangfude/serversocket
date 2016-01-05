###########################################
#Makefile for simple programs
###########################################
INC=
LIB= -lpthread

CC=gcc
CC_FLAG=-Wall

PRG=socket
OBJ=client.o

$(PRG):$(OBJ)
	$(CC) $(INC) $(LIB) -o $@ $(OBJ)
	
.SUFFIXES: .c .o
.cpp.o:
	$(CC) $(CC_FLAG) $(INC) -c $*.c -o $*.o

.PRONY:clean
clean:
	@echo "Removing linked and compiled files......"
	rm -f $(OBJ) $(PRG)
