FROM jpillora/chisel
EXPOSE 10000
ENTRYPOINT ["/app/chisel"]
CMD ["server", "--port", "10000", "--reverse"]
