COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

COLLEEN_SRCS = ./Colleen_dir/Colleen.c
GRACE_SRCS = ./Grace_dir/Grace.c
SULLY_SRCS = ./Sully_dir/Sully.c

CFLAGS = -Wall -Wextra -Werror

all: $(COLLEEN) $(GRACE) $(SULLY)

colleen: $(COLLEEN)

grace: $(GRACE)

sully: $(SULLY)

$(COLLEEN): $(COLLEEN_SRCS)
	clang $(CFLAGS) -o $(COLLEEN) $(COLLEEN_SRCS)
	
$(GRACE): $(GRACE_SRCS)
	clang $(CFLAGS) -o $(GRACE) $(GRACE_SRCS)

$(SULLY): $(SULLY_SRCS)
	clang $(CFLAGS) -o $(SULLY) $(SULLY_SRCS)

clean:
	rm -rf $(COLLEEN) $(GRACE) $(SULLY)

fclean: clean
	rm -rf Sully_*

re: fclean all
