FROM r-base:3.6.2

RUN apt-get update
RUN apt-get install -y \
	libcurl4-openssl-dev \
	libpoppler-cpp-dev \
	libssl-dev \
	libxml2-dev \
	sodium-dev

COPY install.R /opt/install.R
RUN R -f /opt/install.R
WORKDIR /opt/machinelearning
