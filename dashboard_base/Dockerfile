FROM continuumio/anaconda3:4.4.0
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get update
RUN apt-get install -y --reinstall build-essential
COPY dependencies.yml /root/dependencies.yml
RUN conda env create -f /root/dependencies.yml
COPY ./dashboard.pth /opt/conda/envs/dash/lib/python3.4/site-packages/dashboard.pth
WORKDIR /service
EXPOSE 8001
ENTRYPOINT ["sh"]
