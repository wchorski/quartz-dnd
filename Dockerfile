FROM debian

RUN mkdir /src

WORKDIR /src

COPY . ./

RUN apt-get update 
RUN apt-get install wget curl -y
RUN sh ./scripts/install-rust.sh 
RUN sh ./scripts/install-go.sh 
RUN go install github.com/jackyzha0/hugo-obsidian@latest 
RUN sh ./scripts/install-hugo.sh 


CMD ["make", "serve"]