C = g++
INCLS = -I./include
LIBS = -L./lib -L/System/Library/Frameworks -framework GLUT -framework OpenGL -lglew
OUTNAME = simp_fly_cam
FILES = ./src/*.cpp
STDOPTS = -O3

build: ${FILES}
	${C} ${FILES} ${INCLS} ${LIBS} -o ${OUTNAME} ${STDOPTS}

fast: ${FILES}
	${C} ${FILES} ${INCLS} ${LIBS} -o ${OUTNAME} ${STDOPTS} -ffast-math

gprof: ${FILES}
	${C} ${FILES} ${INCLS} ${LIBS} -o ${OUTNAME} ${STDOPTS} -pg

gproffast: ${FILES}
	${C} ${FILES} ${INCLS} ${LIBS} -o ${OUTNAME} ${STDOPTS} -ffast-math -pg

debug: ${FILES}
	${C} ${FILES} ${INCLS} ${LIBS} -o ${OUTNAME} -ggdb

clean:
	rm -rf ${OUTNAME} ${OUTNAME}.dSYM
