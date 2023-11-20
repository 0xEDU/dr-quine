COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

COLLEEN_SRCS = ./colleen/Colleen.c
GRACE_SRCS = ./grace/Grace.c
SULLY_SRCS = ./sully/Sully.c

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

re: fclean all
