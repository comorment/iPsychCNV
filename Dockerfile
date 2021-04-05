# R container
FROM rocker/verse:3.3.1

ENV TZ=Europe
ENV DEBIAN_FRONTEND noninteractive


# R packages
RUN R -e "install.packages('rmarkdown')"
RUN R -e "install.packages('ggplot2')"
RUN R -e "install.packages('data.table')"
RUN R -e "install.packages('optparse')"
RUN R -e "install.packages('foreign')"




RUN R -e "setRepositories(ind=1:8); install.packages('devtools'); library(devtools); install_github('mbertalan/iPsychCNV')"

