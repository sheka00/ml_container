FROM python:3.9-slim
LABEL lib_repo="deepdoctection"
LABEL app_repo="Segmentation"

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y poppler-utils
RUN apt-get install -y python3-pip 
RUN apt-get install -y tesseract-ocr 
RUN apt-get install -y tesseract-ocr-rus
RUN apt-get install -y ffmpeg libsm6 libxext6

WORKDIR /home/app

RUN git clone https://github.com/InfinitasFish/Segmentation.git
RUN pip install -U pip setuptools wheel
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
RUN pip install 'git+https://github.com/facebookresearch/detectron2.git'
RUN pip install deepdoctection[pt]
RUN pip install -U spacy
RUN python3 -m spacy download ru_core_news_lg
RUN pip install matplotlib pandas networkx pullenti flask-reuploaded flask-wtf packaging==21.0

EXPOSE 5000
CMD ["python", "Segmentation/flask_app.py"]

