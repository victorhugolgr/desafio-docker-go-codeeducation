FROM golang as golangbuildstage

WORKDIR /app
COPY main.go .
RUN go build main.go

FROM scratch
WORKDIR /app
COPY --from=0 /app/main .
CMD ["./main"]