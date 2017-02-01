SRC_DIR = src
EXE = desk_calculator

all:
	ocamllex $(SRC_DIR)/lexer.mll
	menhir $(SRC_DIR)/parser.mly
	ocamlopt -o $(EXE) -I $(SRC_DIR) $(SRC_DIR)/parser.mli $(SRC_DIR)/parser.ml $(SRC_DIR)/lexer.ml $(SRC_DIR)/main.ml

clean:
	$(RM) $(EXE) \
        $(SRC_DIR)/*.cmi \
        $(SRC_DIR)/*.cmx \
        $(SRC_DIR)/*.cmo \
        $(SRC_DIR)/*.o \
        $(SRC_DIR)/lexer.ml \
        $(SRC_DIR)/parser.mli \
        $(SRC_DIR)/parser.ml
