# !/bin/bash

mysql --version
mysql -u root -p`Enter YOUR ROOT PASSWORD without SPACES` -B -e "USE mysql; select host,user from user; ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY `UPDATE YOUR PASSWORD WITH SINGLE QUOTES`;flush privileges;quit "

exit

# Example
# mysql -u root -pmyPassKey -B -e "USE mysql; select host,user from user; ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'updated_passkey';flush privileges;quit "
# myPassKey -> Initial Root Password
# updated_passkey -> New Password