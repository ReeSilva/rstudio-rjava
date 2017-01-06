FROM rocker/rstudio:3.3.2
MAINTAINER Renato Biancalana da Silva <renato.biancalana.silva@gmail.com>

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean && \
    apt-get update && \
    apt-get install -y default-jdk \
                       libicu-dev \
                       libpcre3-dev \
                       liblzma-dev \
                       libbz2-dev \
                       libssl-dev \
                       libcurl4-openssl-dev && \
    Rscript -e "install.packages('rJava', type='source')" && \
    apt-get clean 
