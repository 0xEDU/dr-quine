COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

PATH_OBJS = ./objs/

PATH_COLLEEN = ./colleen/
COLLEEN_SRCS = Colleen.s

PATH_GRACE = ./grace/
GRACE_SRCS = Grace.s

PATH_SULLY = ./sully/
SULLY_SRCS = Sully.s

COLLEEN_OBJS = ${COLLEEN_SRCS:%.s=$(PATH_OBJS)%.o}
GRACE_OBJS = ${GRACE_SRCS:%.s=$(PATH_OBJS)%.o}
SULLY_OBJS = ${SULLY_SRCS:%.s=$(PATH_OBJS)%.o}

ASFLAGS = -felf64
GRACEFLAGS = -nostartfiles

all: $(COLLEEN) $(GRACE) $(SULLY)

colleen: $(COLLEEN)

grace: $(GRACE)

sully: $(SULLY)

$(COLLEEN): $(COLLEEN_OBJS)
	@gcc -lc $(COLLEEN_OBJS) -o $(COLLEEN)
	@echo "\033[1;92m[SUCCESS] Linked "$(COLLEEN)"!\033[0m"

$(PATH_OBJS)%.o: $(PATH_COLLEEN)%.s
	@mkdir -p $(PATH_OBJS)
	@nasm $(ASFLAGS) $< -o $@
	@echo "\033[1;92m[SUCCESS] Object" $< "created!\033[0m"
	
$(GRACE): $(GRACE_OBJS)
	@gcc -lc $(GRACEFLAGS) $(GRACE_OBJS) -o $(GRACE)
	@echo "\033[1;92m[SUCCESS] Linked "$(GRACE)"!\033[0m"

$(PATH_OBJS)%.o: $(PATH_GRACE)%.s
	@mkdir -p $(PATH_OBJS)
	@nasm $(ASFLAGS) $< -o $@
	@echo "\033[1;92m[SUCCESS] Object" $< "created!\033[0m"

$(SULLY): $(SULLY_OBJS)
	@gcc -lc $(SULLY_OBJS) -o $(SULLY)
	@echo "\033[1;92m[SUCCESS] Linked "$(SULLY)"!\033[0m"

$(PATH_OBJS)%.o: $(PATH_SULLY)%.s
	@mkdir -p $(PATH_OBJS)
	@nasm $(ASFLAGS) $< -o $@
	@echo "\033[1;92m[SUCCESS] Object" $< "created!\033[0m"

clean:
	rm -rf $(COLLEEN) $(GRACE) $(SULLY)

fclean: clean
	rm -rf objs
	rm -rf Grace_kid.s
	rm -rf Sully_*

re: fclean all
