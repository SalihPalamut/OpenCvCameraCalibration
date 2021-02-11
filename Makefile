SHELL = /bin/bash

CC = g++
LIBS  = $(shell pkg-config --libs opencv4)
CFLAGS =  -Wall -Wextra $(shell pkg-config --cflags opencv4)
CFLAGS += -I. -g

OBJS =  calibration.cpp 

calibration:${OBJS}
	${CC} ${CFLAGS} ${OBJS} -o $@  ${LIBS}
clean:
	-rm -f *.o main
