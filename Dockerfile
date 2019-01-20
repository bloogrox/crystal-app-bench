FROM crystallang/crystal

WORKDIR /project

COPY shard.yml ./shard.yml
RUN shards install

COPY src ./src

RUN shards build --production

# RUN crystal build --release src/hello.cr

EXPOSE 80
