FROM floydcraft/cardano-py-slim:latest
LABEL maintainer="chbfiv@floydcraft.com"

USER ada
WORKDIR /home/ada

COPY --chown=ada:ada files .

ENTRYPOINT [ "cardanopy" ]
CMD [ "run", "/home/ada/app" ]
