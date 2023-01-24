
unzip starter.zip -d $1 && \

echo "\n" &&

cp $(pwd)/wordpress-docker-compose/. $(pwd)/$1 -a  && \
cd $1 && \
docker compose up -d && \

echo "\n" &&
echo "Mounting the folders" && \
echo "Waiting 10 seconds to make sure the volumes are mounted correctly..." && \
sleep 10 && \

sudo chown -R "${USER:=$(/usr/bin/id -run)}:$USER" wp-content && \

mkdir ./wp-content/uploads && \
sudo chown -R www-data:www-data wp-content/uploads && \

echo "\n" &&
echo "successfully created your environment" && \
echo "\n" && \
echo "Your WordPress is running at http://localhost:8000" && \
echo "Your Adminer is running at http//:localhost:8080" && \
echo "Happy coding..."
echo "\n" && \
echo "Your working directory is at ./$1 folder" && \
echo "Remember to change directory by running: cd $1 " && \
echo "\n" 
