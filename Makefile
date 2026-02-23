CC = g++
CFLAGS = -std=c++11 -Wall 
SRC = main.cpp disk.cpp system.cpp
OBJ = $(SRC:.cpp=.o)
EXEC = simulation
CONFDIR = confs
all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^
%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

run: all
	./$(EXEC) 

clean:
	rm -f $(OBJ) $(EXEC)