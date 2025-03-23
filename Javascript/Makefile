COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

COLLEEN_SRCS = ./colleen/Colleen.js
GRACE_SRCS = ./grace/Grace.js
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
	@echo "#!$(NODE_PATH)" > $(GRACE)
	@cat $(GRACE_SRCS) >> $(GRACE)
	@chmod +x ./$(GRACE)

$(SULLY): $(SULLY_SRCS)
	@echo "#!$(NODE_PATH)" > $(SULLY)
	@cat $(SULLY_SRCS) >> $(SULLY)
	@chmod +x ./$(SULLY)

clean:
	rm -rf $(COLLEEN) $(GRACE) $(SULLY)

fclean: clean
	rm -rf Sully_*

re: fclean all
