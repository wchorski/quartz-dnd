FROM debian:stable

RUN mkdir /app

WORKDIR /app

COPY . ./

RUN sh ./scripts/install-rust.sh
RUN sh ./scripts/install-go.sh

CMD ["npm", "start"]