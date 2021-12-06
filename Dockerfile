FROM bellsoft/liberica-openjdk-debian:8

RUN apt update
RUN apt install -y git

RUN git clone https://github.com/ADSempere/incubator-retired-wave.git
RUN mv incubator-retired-wave wave

WORKDIR /wave
COPY wave/config/application.conf ./config/application.conf
EXPOSE 9898
CMD ["./gradlew", "run"]
