#!/bin/bash
mysql --version > mysql_version.txt

OPMYSQL=$(cat mysql_version.txt)
echo $OPMYSQL
mysql --version | cut -d " " -f 4 > mysql_version.txt

TESTSQL=$(cat mysql_version.txt)
echo $TESTSQL

if grep -q "$TESTSQL" <<< "$OPMYSQL"; then
  echo "MySQL is installed appropriately so moving further with the setup"
    echo "- starting to initialize the mysql database and verifying the user auth"
    #mysql -u root -ppassword -B -e \
    # "USE mysql; \
    # select host,user from user; \
    # ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY `password`; \
    # flush privileges; \
    # quit;"
    #mysql -u root -p`Enter YOUR ROOT PASSWORD without SPACES` -B -e \
    # "USE mysql; select host,user from user; \
    # ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY `UPDATE YOUR PASSWORD WITH SINGLE QUOTES`; \
    # flush privileges; \
    # quit;"
    echo "- logging into the MySQL database and creating a new NODELOGIN database with columns id, username, password, and email"
    mysql -u root -ppassword -B -e "show databases;USE nodelogin; show tables;select * from accounts;"
    #mysql -u root -ppassword -B -e "CREATE DATABASE IF NOT EXISTS `nodelogin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci; USE `nodelogin`; CREATE TABLE IF NOT EXISTS `accounts` ( `id` int(11) NOT NULL AUTO_INCREMENT, `username` varchar(50) NOT NULL,`password` varchar(255) NOT NULL,`email` varchar(100) NOT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;INSERT INTO `accounts` (`id`, `username`, `password`, `email`) VALUES (1, 'test', 'test', 'test@test.com'); quit;"
    echo "- Creating a new directory for nodelogin files"
    cd ~ 
    pwd
        if [ -d "nodelogin" ];
        then
                echo "-entering nodelogin"
                cd nodelogin
                pwd
                rm package.json
                echo "- installing express package"
                npm install express --save 
                echo "- installing express session package"
                npm install express-session --save
                echo "- installing mysql package"
                npm install mysql --save
                echo "- all dependencies installed successfully"
        else
                mkdir nodelogin
                cd nodelogin
                pwd
                echo "- installing express package"
                npm install express --save  
                echo "- installing express session package"
                npm install express-session --save 
                echo "- installing mysql package"
                npm install mysql --save 
                echo "- all dependencies installed successfully"
        fi
else 
  echo "MySQL is not installed, so redirecting to the MYSQL Downloads."
  open https://dev.mysql.com/downloads/mysql/
fi