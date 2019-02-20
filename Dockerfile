FROM continuumio/miniconda3
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN conda create -n keras python=3.6
RUN source activate keras
RUN conda install tensorflow keras
#for faster installation
RUN pip install keras
