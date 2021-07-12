################# BASE IMAGE #####################
FROM ubuntu:bionic-20200921
#FROM ubuntu:20.04
##site to test docker configuration files
# https://labs.play-with-docker.com/
################## METADATA #######################
LABEL base_image="ubuntu:bionic-20200921"
LABEL version="4.7.12"
LABEL software="quality-assembly"
LABEL software.version="0.1"
LABEL about.summary="Container image containing all requirements for polishing assemblies"
LABEL about.home="https://github.com/camoragaq/"
LABEL about.documentation="https://github.com/camoragaq/quality-assembly/README.md"
LABEL about.license_file="https://github.com/camoragaq/quality-assembly/LICENSE.txt"
LABEL about.license="GNU-3.0"

################## MAINTAINER ######################
MAINTAINER Carol Moraga <camoragaq@gmail.com>
################## INSTALLATION ######################
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
   python3-pip\
   wget \
   ca-certificates \
#RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
#RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /miniconda
#ENV PATH /miniconda/bin:$PATH
#polishing tools
#COPY environment-quality-assembly.yml /
#RUN conda env create -n quality-assembly -f /environment-quality-assembly.yml && conda clean -a
#ENV PATH /miniconda/envs/quality-assembly/bin:$PATH
#RUN conda create --name HapSolo python=2.7
#RUN conda install -c anaconda pandas
#RUN conda activate HapSolo
#RUN conda install -c anaconda pandas
#RUN apt-get install -y git
#RUN git clone https://github.com/esolares/HapSolo.git
#RUN mv HapSolo /opt
RUN pip install ont-bonito

