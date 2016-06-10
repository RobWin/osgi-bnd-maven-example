rm -rf ch.vorburger.learnosgi.hello/generated
rm -rf ch.vorburger.learnosgi.hello/target
rm -rf ch.vorburger.learnosgi.hello/bin
./gradlew clean build
rm -rf ch.vorburger.learnosgi.hello/generated
rm -rf ch.vorburger.learnosgi.hello/target
rm -rf ch.vorburger.learnosgi.hello/bin
cd ch.vorburger.learnosgi.hello
mvn clean package
