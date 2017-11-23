FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.0.0
WORKDIR /usr/share/elasticsearch
RUN ./bin/elasticsearch-plugin install x-pack
COPY x-pack-6.0.0.jar ./plugins/x-pack
RUN echo xpack.security.enabled: false >> ./config/elasticsearch.yml
