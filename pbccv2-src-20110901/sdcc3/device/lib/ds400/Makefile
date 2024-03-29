
srcdir = .
top_builddir = ../../..

AR_S            = ar -S

LIB_TYPE     = RANLIB

CC = ../../../bin/sdcc

# override PORTDIR defined by super (parent) makefile
override PORTDIR = ../build/ds400

#VERBOSE = --verbose

OBJECTS = tinibios.rel memcpyx.rel ds400rom.rel

SOURCES = $(patsubst %.rel,%.c,$(OBJECTS))

CPPFLAGS = -I$(srcdir)/../../include -I$(srcdir)/../../include/ds400
CFLAGS = -mds400 $(CPPFLAGS) $(VERBOSE) --std-c99

all: $(OBJECTS) $(PORTDIR)/libds400.lib

clean:
	rm -f *.lst *.rel *.sym *.cdb *.asm \#* *~ *.rst *.hex 
	rm -f *.ihx temp.lnk *.map *.lib

distclean: clean
	rm -f Makefile Makefile.dep

$(PORTDIR)/libds400.lib: $(OBJECTS)
ifeq ($(LIB_TYPE), SDCCLIB)
	rm -f $@; \
	../../../bin/sdcclib -a $@ $(OBJECTS)
else
  ifeq ($(LIB_TYPE), AR)
	$(AR_S) -cq $@ $(OBJECTS)
  else
    ifeq ($(LIB_TYPE), RANLIB)
	$(AR_S) -cq $@ $(OBJECTS)
	$(top_builddir)/bin/asranlib $@
    else
	rm -f $@;
	for libfile in $(basename $(OBJECTS)); do echo $$libfile >>$@; done
	cp $(OBJECTS) $(PORTDIR)
    endif
  endif
endif

%.rel: %.c
	$(CC) -c $(CFLAGS) $<

# Creating dependencies
# ---------------------
depend: Makefile.dep

Makefile.dep: $(SOURCES)
	rm -f Makefile.dep
	for i in $^; do \
	  $(CC) -M $(CPPFLAGS) $$i >$${i}.dep; \
	  cat $${i}.dep >>Makefile.dep; \
	  rm $${i}.dep; \
	done

ifeq "$(findstring $(MAKECMDGOALS),clean distclean)" ""
  -include Makefile.dep
endif
