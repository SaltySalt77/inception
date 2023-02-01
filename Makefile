FILE = -f ./srcs/docker-compose.yaml

all :
	docker-compose $(FILE) up --build -d

clean :
	docker-compose $(FILE) down

fclean :
	docker-compose $(FILE) down -v

cache :
	@${MAKE} clean
	docker system prune -a
re :
	@${MAKE} clean
	@${MAKE} all
