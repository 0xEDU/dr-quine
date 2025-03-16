COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

PATH_OBJS = ./objs/

PATH_COLLEEN = ./colleen/
COLLEEN_SRCS = Colleen.s

GRACE_SRCS = ./grace/Grace.s
SULLY_SRCS = ./sully/Sully.s

COLLEEN_OBJS = ${COLLEEN_SRCS:%.s=$(PATH_OBJS)%.o}

ASFLAGS = -felf64

all: $(COLLEEN) $(GRACE) $(SULLY)

colleen: $(COLLEEN)

grace: $(GRACE)

sully: $(SULLY)

$(COLLEEN): $(COLLEEN_OBJS)
	@ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc $(COLLEEN_OBJS) -o $(COLLEEN)
	@echo "\033[1;92m[SUCCESS] Linked "$(COLLEEN)"!\033[0m"

$(PATH_OBJS)%.o: $(PATH_COLLEEN)%.s
	@mkdir -p $(PATH_OBJS)
	@nasm $(ASFLAGS) $< -o $@
	@echo "\033[1;92m[SUCCESS] Object" $< "created!\033[0m"

	
$(GRACE): $(GRACE_SRCS)
	nasm $(ASFLAGS) -o $(GRACE) $(GRACE_SRCS)

$(SULLY): $(SULLY_SRCS)
	nasm $(ASFLAGS) -o $(SULLY) $(SULLY_SRCS)

clean:
	rm -rf $(COLLEEN) $(GRACE) $(SULLY)

fclean: clean
	rm -rf Sully_*

re: fclean all
