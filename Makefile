all: clox jlox

jlox: jlox_ast
	javac -d "build" jlox/com/craftinginterpreters/lox/*.java
	javac -d "build" -cp "build" jlox/com/craftinginterpreters/lox/Lox.java

jlox_ast:
	javac -d "build" jlox/com/craftinginterpreters/tool/*.java
	javac -d "build" -cp "build" jlox/com/craftinginterpreters/tool/GenerateAst.java
	java -cp "build" jlox/com/craftinginterpreters/tool/GenerateAst.java jlox/com/craftinginterpreters/lox/

clox:
	cd clox; make

clean:
	cd clox; make clean

.PHONY: all clox jlox clean
