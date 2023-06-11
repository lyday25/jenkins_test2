FROM Ubutun:20.04
RUN for user in ayeni; do userid $userid; echo "1234" | passwd $user --stdin; done
RUN apt update && apt-y install mysql
