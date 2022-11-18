# nodelogin-SQL-exploration


**PREREQUISITES**

Install `mysql server`. Quick suggestion, you can download it from [MySQL community downloads](https://dev.mysql.com/downloads/mysql/).

Once, it is installed. Make sure to add path as an environment variable so that you can the bash/zsh can recognise.

To verify the installation, try - `mysql --version`. The terminal/zsh/bash should recognize.

**STEPS TO SETUP MySQL PRIOR THE ACTUAL CODE WORK**

Login to mysql server using the root and password - `mysql -u root -p`

List all the available `Databases`  - `show databases;`
Switch the pointers to the `mysql` database - `use mysql;`
List all the `tables` available under the db `mysql` - `SHOW tables;`
List the values of the columns `host` and `user` - `select host, user from user;`

**NOTE**: Make sure, you got the `root` aligned with the `localhost` so you can test it out.

**IMPORTANT**: Refer [dev.mysql.community](https://dev.mysql.com/doc/mysql-getting-started/en/#:~:text=At%20this%20point,at%20the%20prompt%3A)
Update `root` user password - `ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';`
Refresh the privileges - `flush privileges;`
Finally, verify the values in the column `host` and `user` again(you should see `root` and `localhost`) - `select host, user from user;`

Then, you can checkout of mysql command line - `quit`

**If needed, try logging into the server using the updated password* - `mysql -u root -p`

show tables;
select * from accounts



**IMPORTANT POINTS TO NOTE**

MySQL for Node.js - Install with command: `npm install mysql --save`


