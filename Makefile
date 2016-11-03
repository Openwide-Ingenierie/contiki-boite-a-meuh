DEFINES+=PROJECT_CONF_H=\"project-conf.h\"

all: bam

CONTIKI_WITH_IPV6 = 1

MODULES += core/net/http-socket

ifdef MAKER_KEY
CFLAGS+=-DMAKER_KEY="\"$(MAKER_KEY)\""
endif

include $(CONTIKI)/Makefile.include
