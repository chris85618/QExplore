FROM condaforge/miniforge3

RUN mamba update -y mamba conda
ARG USER_DIR=/home/salman/anaconda3
RUN mkdir -p ${USER_DIR}
WORKDIR ${USER_DIR}
COPY QExplore_ENV.yaml ./QExplore_ENV.yaml
RUN mamba env create --name QExplore --file QExplore_ENV.yaml
COPY * .
