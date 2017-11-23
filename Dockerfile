FROM elasticsearch:5.5.2-alpine
WORKDIR /usr/share/elasticsearch
RUN ./bin/elasticsearch-plugin install x-pack
COPY x-pack-5.5.2.jar ./plugins/x-pack
RUN echo xpack.security.enabled: false >> ./config/elasticsearch.yml
