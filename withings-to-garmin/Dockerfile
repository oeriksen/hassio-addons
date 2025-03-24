ARG BUILD_FROM
ARG BUILD_ARCH
FROM $BUILD_FROM

RUN \
    set -x \
    && apk add --no-cache \
        tzdata \
    && pip3 install \
        --no-cache-dir \
        --prefer-binary \
        requests \
        lxml \
        garth>=0.4.32 \
        setuptools

ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY rootfs /

RUN chmod a+x /run.sh

WORKDIR /

CMD /run.sh | tee -a /config/withings_garmin_sync.log
