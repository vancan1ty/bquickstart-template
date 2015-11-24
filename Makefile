all: clean
	mvn archetype:create-from-project -Darchetype.properties=archetypePFile.txt

twothings: copyover gitcommit	

copyover:
	cp -R target/generated-sources/archetype/* ../berry-quickstart/

gitcommit:
	(cd ../berry-quickstart && git add . && git commit)

install:
	(cd ../berry-quickstart && mvn install)

clean:
	mvn clean
	(cd ../berry-quickstart && rm -Rf pom.xml src target)
