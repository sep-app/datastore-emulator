FROM google/cloud-sdk:alpine

RUN gcloud components install cloud-datastore-emulator
RUN apk add --no-cache openjdk8-jre
RUN apk add --no-cache openjdk11-jre
RUN gcloud -q beta emulators datastore env-init; exit 0

ENV CLOUDSDK_CORE_PROJECT=default

ENTRYPOINT ["gcloud", "-q", "beta", "emulators", "datastore"]
CMD ["start", "--host-port=0.0.0.0:8081"]
# CLOUDSDK_CORE_PROJECT variable is required for the emulator to start