CC = gcc
COPT = -O2 
LIB = -lcurl

OBJ = tun.o http.o main.o

NAME = chaosvpn

$(NAME): $(OBJ)
	$(CC) -o $@ $(OBJ) $(LIB)

%.o: %.c
	$(CC) $(COPT) -c $<
       
clean:
	rm *.o $(NAME) 