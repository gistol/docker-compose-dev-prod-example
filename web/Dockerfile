# For dev setups
FROM nginx:1.15 as dev-stage
ARG ENV=prod
ENV ENV=${ENV}
WORKDIR /app
CMD ./watch.sh

# Building stems from dev
FROM dev-stage as build-stage
COPY build.sh ./
RUN ./build.sh


FROM nginx:1.15 as prod-stage
WORKDIR /usr/share/nginx/html
COPY --from=build-stage /app/dist/ /usr/share/nginx/html
