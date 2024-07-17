FROM alpine:latest

RUN  echo "Must be root to run this script." 
EXPOSE 3000
RUN echo "server running $PORT"


