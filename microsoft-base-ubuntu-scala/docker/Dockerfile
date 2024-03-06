FROM mcr.microsoft.com/devcontainers/base:ubuntu

WORKDIR /workspace

RUN apt-get update \
    && curl -s "https://get.sdkman.io" | bash \
    && /bin/bash -c " \
    source /root/.sdkman/bin/sdkman-init.sh; \
    echo 'SDK installed'; \
    sdk install java; \
    sdk install scala; \
    sdk install sbt; \
    "

CMD [ "sleep", "infinity" ]