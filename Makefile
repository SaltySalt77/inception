FILE = -f ./srcs/docker-compose.yaml

all :
	sudo docker-compose $(FILE) up --build -d

clean :
	sudo docker-compose $(FILE) down

fclean :
	sudo docker-compose $(FILE) down -v

cache :
	@${MAKE} clean
	sudo docker system prune -a
re :
	@${MAKE} clean
	@${MAKE} all
