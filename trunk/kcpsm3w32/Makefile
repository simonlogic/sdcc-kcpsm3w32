all:

vc:
	cl /nologo /EHsc /I dep kcpsm3w32.cpp dep\getopt.c shell32.lib

gnu:
	g++ -g -I dep kcpsm3w32.cpp dep\getopt.c -o kcpsm3w32.exe

clean:
	rm -rf *.obj *.o

