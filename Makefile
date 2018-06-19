COMP=g++

#Building Start
cppdata: main.o lib.o
		${COMP} -o cppdata main.o lib.o

main.o: main.cpp
		${COMP} -c main.cpp

lib.o: lib.cpp
		${COMP} -c lib.cpp

#Building Stop

#Run Programm Start
run: cppdata
		./cppdata
#Run Programm Stop


#Clean Start
clean:
		rm -rf cppdata
		rm -rf *.o
#Clean Stop
