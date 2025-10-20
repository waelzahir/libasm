#ifndef LIBASM
#define LIBASM
#include <stdlib.h>

size_t ft_strlen(const char *s);
char *ft_strcpy(char *restrict dst, const char *restrict src);
int ft_strcmp(const char *s1, const char *s2);
size_t ft_write(int fd, void *buf, size_t count);
size_t ft_read(int fd, void *buf, size_t count);
char *ft_strdup(const char *s);


typedef struct s_list
{
void *data;
struct s_list *next;
} t_list;

int ft_putnbr_base(int nbr, char *base);

#endif