
PC = gpc

SRC = $(wildcard *.pas)
EXE = $(SRC:.pas=.exe)


all: $(EXE)

%.exe: %.pas
	$(PC) --automake $< -o $@

clean:
	rm -f *~ *.gpi *.o *.exe

