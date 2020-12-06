FROM pandoc/latex:latest

RUN apk update
RUN apk --no-cache add aspell aspell-en texlive texlive-xetex texlive-luatex ttf-linux-libertine
RUN tlmgr install marginnote sectsty fontawesome5

# Copies your code file from your action repository to the filesystem path `/` of the container
# COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
# ENTRYPOINT ["/entrypoint.sh"]