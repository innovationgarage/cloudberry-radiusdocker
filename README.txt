# Build image and start container

    docker build --tag cloudberry-radiusdocker .
    CONTAINER=$(docker run -d -loudberry-radiusdocker /sbin/init)
    docker exec -it $CONTAINER /bin/sh

# Test radius
You can do a test authentication against radius with

    root@LEDE:/# echo "User-Name=fredf,User-Password=wilma" | radclient localhost:1812 auth testing123
    Received response ID 161, code 2, length = 20
    root@LEDE:/# echo "User-Name=fredf,User-Password=badpass" | radclient localhost:1812 auth testing123
    Received response ID 84, code 3, length = 20
    root@LEDE:/# 
