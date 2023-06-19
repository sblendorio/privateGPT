FROM python:3.10

WORKDIR /

COPY . .

RUN echo start && \
    mkdir models && \
    wget -O models/ggml-gpt4all-j-v1.3-groovy.bin https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin && \
#    pip3 install -U pip cmake wheel && \
    pip3 install -U pip && \
    pip3 install -r requirements.txt && \
#    apt-get update && \
#    apt-get install ffmpeg libsm6 libxext6  -y && \
#    python ingest.py && \
    echo end

#CMD ["python", "privateGPT.py"]
CMD ["sleep", "infinity"]