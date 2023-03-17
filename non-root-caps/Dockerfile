FROM coredns/coredns

FROM ubuntu
RUN apt-get update && apt-get install -y libcap2-bin

COPY --from=0 /coredns ./