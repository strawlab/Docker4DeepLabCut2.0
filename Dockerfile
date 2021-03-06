FROM python:3
RUN pip install imageio
# install ffmpeg from imageio.
RUN pip install imageio-ffmpeg


FROM bethgelab/deeplearning:cuda9.0-cudnn7
RUN add-apt-repository ppa:deadsnakes/ppa #ADDS NEW REPO
RUN add-apt-repository --remove ppa:jonathonf/python-3.6 #REMOVES BROKEN REPO
RUN apt-get update
RUN apt-get -y install ffmpeg

#RUN pip install --upgrade pip #see issue #25
RUN pip install tensorflow-gpu==1.8
RUN pip3 install deeplabcut
RUN pip install ipywidgets
RUN pip3 install ipywidgets
RUN pip3 install seaborn
