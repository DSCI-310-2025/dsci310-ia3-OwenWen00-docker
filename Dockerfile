# Use rocker/rstudio:4.4.2 as the base image
FROM rocker/rstudio:4.4.2
# Use CRAN mirror
RUN Rscript -e 'install.packages("remotes", repos="http://cran.rstudio.com/")'
#Install cowsay package with version 0.8.0, and with specific CRAN mirror
RUN Rscript -e 'remotes::install_version("cowsay", version="0.8.0", repos="http://cran.rstudio.com/")'
# Set the working directory
WORKDIR /home/rstudio