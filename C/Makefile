COLLEEN = Coleeen
GRACE = Grace
SULLY = Sully

COLLEEN_SRCS = ./Colleen.c
GRACE_SRCS = ./Grace.c
SULLY_SRCS = ./Sully.c

CFLAGS = -Wall -Wextra -Werror

all: $(COLLEEN) $(GRACE) $(SULLY)

colleen: $(COLLEEN)

grace: $(GRACE)

sully: $(SULLY)

$(COLLEEN):
	clang $(CFLAGS) -o $(COLLEEN) $(COLLEEN_SRCS)
$(GRACE):
	clang $(CFLAGS) -o $(GRACE) $(GRACE_SRCS)
$(SULLY):
	clang $(CFLAGS) -o $(SULLY) $(SULLY_SRCS)

clean:
	rm -rf $(COLLEEN) $(GRACE) $(SULLY)

fclean: clean

re: fclean all
