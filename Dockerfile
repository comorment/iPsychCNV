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

#RUN R -e "setRepositories(ind=1:8)"
#RUN R -e "install.packages('devtools')"


RUN R -e "setRepositories(ind=1:8); install.packages('devtools'); library(devtools); install_github('mbertalan/iPsychCNV')"

#RUN R -e "library(iPsychCNV)"


#RUN R -e "install_github('mbertalan/iPsychCNV')"



#COPY install.R /

#RUN R -e install.R

#CMD ["Rscript", "install.R"]
