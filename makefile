NASM = nasm
NASMFLAGS = -f elf64 -g

AR = ar
ARFLAGS = rcs

SRCS = $(wildcard *.s)
OBJS = $(SRCS:.s=.o)
LIB = libft.a

all: $(LIB)

$(LIB): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

%.o: %.s
	$(NASM) $(NASMFLAGS) -o $@ $<

clean:
	rm -f $(OBJS) $(LIB) myprogram

run : all
	gcc main.c -L. -lft -o myprogram -g -no-pie
	./myprogram
