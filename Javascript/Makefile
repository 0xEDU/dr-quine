COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

COLLEEN_SRCS = ./colleen/Colleen.js
GRACE_SRCS = ./grace/Grace.c
SULLY_SRCS = ./sully/Sully.c

NODE_PATH=$(shell which node)

all: $(COLLEEN) $(GRACE) $(SULLY)

colleen: $(COLLEEN)

grace: $(GRACE)

sully: $(SULLY)

$(COLLEEN): $(COLLEEN_SRCS)
	@echo "#!$(NODE_PATH)" > $(COLLEEN)
	@cat $(COLLEEN_SRCS) >> $(COLLEEN)
	@chmod +x ./$(COLLEEN)
	
$(GRACE): $(GRACE_SRCS)
	clang $(CFLAGS) -o $(GRACE) $(GRACE_SRCS)

$(SULLY): $(SULLY_SRCS)
	clang $(CFLAGS) -o $(SULLY) $(SULLY_SRCS)

clean:
	rm -rf $(COLLEEN) $(GRACE) $(SULLY)

fclean: clean
	rm -rf Sully_*

re: fclean all
