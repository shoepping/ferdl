FROM r-base:4.0.4

RUN apt-get update
RUN apt-get install -y \
	libcurl4-openssl-dev \
	libpoppler-cpp-dev \
	libssl-dev \
	libsodium-dev \
	libxml2-dev

COPY install.R /opt/install.R
RUN R -f /opt/install.R
WORKDIR /opt/machinelearning
