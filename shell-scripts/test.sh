#!bash

./gradlew clean build
result=$? # $? - returns the exit value of the last executed command
if [ $result != 0 ] ; then # 0 - successful
    exit 1 # General errors
fi
# cd build/libs && rm $(find -name '*plain*') && mv *.jar greetings.jar
cd build/libs
echo "ls"
ls
echo '--> -Djarmode=layertools -jar greetings-0.0.1.jar extract --destination extracted/'
java -Djarmode=layertools -jar greetings-0.0.1.jar extract --destination extracted/
cd extracted
cp -r ./dependencies/* ./spring-boot-loader
cp -r ./application/* ./spring-boot-loader
cd ./spring-boot-loader
java -noverify -XX:TieredStopAtLevel=1 -Dspring.main.lazy-initialization=true org.springframework.boot.loader.JarLauncher