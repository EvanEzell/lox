default: jlox_ast jlox

jlox:
	javac -d "build" jlox/com/craftinginterpreters/lox/*.java
	javac -d "build" -cp "build" jlox/com/craftinginterpreters/lox/Lox.java

jlox_ast:
	javac -d "build" jlox/com/craftinginterpreters/tool/*.java
	javac -d "build" -cp "build" jlox/com/craftinginterpreters/tool/GenerateAst.java
	java -cp "build" jlox/com/craftinginterpreters/tool/GenerateAst.java jlox/com/craftinginterpreters/lox/

.PHONY: jlox jlox_ast
