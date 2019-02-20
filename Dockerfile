FROM continuumio/miniconda3
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN conda create -n keras python=3.6
RUN source activate keras
RUN conda install -c conda-forge keras
#RUN conda install tensorflow keras
#for faster installation
RUN pip3 install --upgrade tensorflow
RUN pip install keras
