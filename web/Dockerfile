FROM node:8 as build-stage
WORKDIR /app

ARG ENV=prod
ENV ENV=${ENV}

COPY build-step.sh ./
RUN ./build-step.sh

FROM node:8
WORKDIR /app
COPY --from=build-stage /app/build.txt /app/
CMD cat build.txt

