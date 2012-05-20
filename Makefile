
RM = rm -f
PC = gpc

SRC = $(wildcard *.pas)
EXE = $(SRC:.pas=.exe)

all: $(EXE) cleanobjs

%.exe: %.pas
	$(PC) --automake $< -o $@

cleanobjs:
	$(RM) *.gpi *.o

clean: cleanobjs
	$(RM) *~ *.exe
