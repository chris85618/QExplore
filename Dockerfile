FROM continuumio/anaconda3

RUN conda update -y conda
ARG USER_DIR=/home/salman/anaconda3
RUN mkdir -p ${USER_DIR}
WORKDIR ${USER_DIR}
COPY QExplore_ENV.yaml ./QExplore_ENV.yaml
RUN conda update -y conda && conda env create --name QExplore --file QExplore_ENV.yaml
COPY * .
