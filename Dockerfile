FROM docker:git
RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install  --no-cache-dir awscli && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
