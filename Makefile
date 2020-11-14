#Complier to use
CC:=gcc 
#My new Archive
ARCHIVE:=ar 
#Target Name for Main
MAIN=Main.o 
#Target Name for BasicMath & power
LIBRARY=basicMath.o power.o 

FOOL = -Wall -g

# Creates files.
all: mains maind	

# Creates  static library containing the files 
mains: myMaths $(MAIN) 
	$(CC) $(FOOL) -o mains $(MAIN) libmyMath.a 

# Creates  shared library containing the files 
maind: myMathd $(MAIN)
	$(CC) $(FOOL) -o maind $(MAIN) ./libmyMath.so

# Creates file --> links main && the static library
myMathd: $(LIBRARY)
	$(CC) -shared -o libmyMath.so $(LIBRARY)

# Creates file --> links main && the shared library
myMaths: $(LIBRARY)
	$(ARCHIVE) -rcs libmyMath.a $(LIBRARY)	

# Links power && .h
power.o: power.c myMath.h
	$(CC) $(FOOL) -fPIC -c power.c

# Links basicMath && .h
basicMath.o: basicMath.c myMath.h
	$(CC) $(FOOL) -c basicMath.c

# Links Main && .h
Main.o: Main.c myMath.h  
	$(CC) $(FOOL) -c Main.c 

# Removes all .o .a && .so files. (Also) mains && maind
clean:
	rm -f *.o *.a *.so mains maind
