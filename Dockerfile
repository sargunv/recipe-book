FROM rust:1.74

EXPOSE 8080

RUN cargo install cooklang-chef

COPY . .

RUN make check

CMD ["chef", "serve", "--path", "recipes", "--host", "--port", "8080"]
