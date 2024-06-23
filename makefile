rundbcontainer:
	docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=my-secret-pw -p 3306:3306 -d mysql:latest

createdb:
	docker exec -i mysql-container mysql -u root -pmy-secret-pw -e "CREATE DATABASE plura;"

.PHONY: rundbcontainer, createdb