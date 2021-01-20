FROM pytorch/pytorch:1.7.0-cuda11.0-cudnn8-devel

LABEL maintainer="Licsber <licsber@gmail.com>"

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install \
    --no-install-recommends git cmake libgl1-mesa-glx libglib2.0-0 -y && \
    rm -rf /var/lib/apt/lists/ && rm -rf /var/cache/apt/

RUN cd / && rmdir /workspace && \
    git clone https://github.com/royorel/Lifespan_Age_Transformation_Synthesis.git workspace

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip install -r requirements.txt && rm -rf ~/.cache/

RUN python download_models.py

