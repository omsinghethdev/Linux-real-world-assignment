#!/bin/bash
echo "Enter the .env file name"
read ENV
if [ "$ENV" = dev ]; then
source ../env-files/dev.env
elif [ "$ENV" = test ]; then
source ../env-files/test.env
elif [ "$ENV" = prod ]; then 
source ../env-files/prod.env
else
	echo "INVALID ENV : $ENV"
	exit 1
fi


echo "Applisction Name : $APP_NAME"
echo "Port : $APP_PORT"
echo "Log Level : $LOG_LEVEL"
echo "Database host : $DB_HOST"
