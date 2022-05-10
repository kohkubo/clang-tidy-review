FROM ubuntu:20.04

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends\
    clang-tidy-12

COPY clang-tidy.sh /clang-tidy.sh

RUN chmod +x /clang-tidy.sh

ENTRYPOINT ["/clang-tidy.sh"]
