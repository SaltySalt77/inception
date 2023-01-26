FILE = -f ./srcs/docker-compose.yaml
M_IP = ./srcs/requirements/wordpress/conf/host_ip.txt

all :
	docker-compose $(FILE) up mariadb --build -d
	docker-compose ${FILE} exec mariadb hostname -i > ${M_IP}
	docker-compose $(FILE) up wordpress --build -d
	docker-compose $(FILE) up nginx --build -d

clean :
	docker-compose $(FILE) down

re :
	@${MAKE} clean
	@${MAKE} all
