NASMFLAGS = -f elf64 -g

ARFLAGS = r

SRC_DIR := src
OBJ_DIR := obj

SRC = ft_read.s ft_strcmp.s ft_strcpy.s \
	ft_strdup.s ft_strlen.s ft_write.s 

OBJ = $(SRC:.s=.o)

OBJ := $(addprefix $(OBJ_DIR)/, $(OBJ)) 

SRC := $(addprefix $(SRC_DIR)/, $(SRC)) 

LIB = libft.a

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s
	nasm $(NASMFLAGS)  $< -o $@

all : ${LIB}

$(LIB):  $(OBJ) 
	ar $(ARFLAGS) $(LIB) $(OBJ)


clean:
	rm -rf $(OBJ)

fclean:  clean 
	rm  -rf $(LIB) myprogram
run : all
	gcc main.c -L. -lft -o myprogram -g -no-pie
	./myprogram
