FROM ubuntu:22.04


RUN apt-get update && apt-get install -y sudo


# Copy the bash script to the container
COPY open5g_bash.sh /usr/local/bin/

# Set execute permissions on the script
RUN chmod +x /usr/local/bin/open5g_bash.sh

#build core network services
RUN /usr/local/bin/open5g_bash.sh

#expose needed ports
EXPOSE 80/tcp 9090/tcp 38412/sctp 8080/tcp 8805/udp 2152/udp
EXPOSE 3306 33060
