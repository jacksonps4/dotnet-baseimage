FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl
RUN curl -L -o packages-microsoft-prod.deb https://packages.microsoft.com/config/ubuntu/19.10/packages-microsoft-prod.deb 
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update
RUN apt-get -y install apt-transport-https
RUN apt-get -y install dotnet-sdk-3.1

