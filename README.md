# germes
IT-Simulator Project http://it-simulator.com/#/article/1/3

### Run MySQL: 
http://it-simulator.com/#/article/1/189

docker run --name germes -v /mnt/sda1/var/mysql_data:/var/lib/mysql -p 3306:3306 -e MYSQL_USER=germes -e MYSQL_PASSWORD=germes -e MYSQL_DATABASE=germes -e MYSQL_ROOT_PASSWORD=root -d mysql:5.7
docker exec -it germes bash