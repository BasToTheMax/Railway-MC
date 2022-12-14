FROM    openjdk:17-slim

RUN     apt-get update -y \
 			&& apt-get install -y lsof curl ca-certificates openssl git tar sqlite3 fontconfig libfreetype6 tzdata iproute2 libstdc++6
    
COPY    . .

# USER        container
# ENV         USER=container HOME=/home/container
# WORKDIR     /home/container

# COPY        ./../entrypoint.sh /entrypoint.sh
# CMD         [ "/bin/bash", "/entrypoint.sh" ]
# CMD           [ "/bin/bash", "start.sh" ]
