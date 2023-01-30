
	# docker-compose $(FILE) up mariadb --build -d
	# docker-compose $(FILE) up wordpress --build -d
	# docker-compose $(FILE) up nginx --build -d

FILE = -f ./srcs/docker-compose.yaml
M_IP = ./srcs/requirements/wordpress/conf/host_ip.txt

all :
	docker-compose $(FILE) up --build -d

clean :
	docker-compose $(FILE) down
	@docker volume rm db 2> /dev/null || true
	@docker volume rm wordpress 2> /dev/null || true

re :
	@${MAKE} clean
	@${MAKE} all
