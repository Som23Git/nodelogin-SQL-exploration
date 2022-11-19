# A Simple Login Page with Database Connection  ⚡ 
------------



![html5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white) ![css](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white) ![mysql](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white) ![express](https://img.shields.io/badge/Express.js-000000?style=for-the-badge&logo=express&logoColor=white) ![nodejs](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white) ![macos](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=apple&logoColor=white)

### PRE-REQUISITES
------------

+ Install `mysql server`. Quick suggestion, you can download it from [MySQL community downloads](https://dev.mysql.com/downloads/mysql/).

+ Once, it is installed. Make sure to add path as an environment variable so that you can the bash/zsh can recognise.

+ To verify the installation, try - `mysql --version`. The terminal/zsh/bash should recognize.

### STEPS TO SETUP MySQL PRIOR THE ACTUAL CODE WORK
------------

+ Login to mysql server using the root and password - `mysql -u root -p`

+ List all the available `Databases`  - `show databases;`
+ Switch the pointers to the `mysql` database - `use mysql;`
+ List all the `tables` available under the db `mysql` - `SHOW tables;`
+ List the values of the columns `host` and `user` - `select host, user from user;`

**NOTE**: Make sure, you got the `root` aligned with the `localhost` so you can test it out.

**IMPORTANT**: Refer [dev.mysql.community](https://dev.mysql.com/doc/mysql-getting-started/en/#:~:text=At%20this%20point,at%20the%20prompt%3A)
+ Update `root` user password - `ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';`
+ Refresh the privileges - `flush privileges;`
+ Finally, verify the values in the column `host` and `user` again(you should see `root` and `localhost`) - `select host, user from user;`

+ Then, you can checkout of mysql command line - `quit`

>**If needed, try logging into the server using the updated password* - `mysql -u root -p`


### IMPORTANT POINTS TO NOTE
------------

MySQL for Node.js - Install with command: `npm install mysql --save`


show tables;
select * from accounts
