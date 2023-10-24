SRC=main.s
OBJ=main.o
BIN=main

${BIN}: ${OBJ}
	ld $< -o $@

${OBJ}: ${SRC}
	as $< -o $@

clean:
	rm ${BIN} ${OBJ}
