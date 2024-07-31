FROM ghcr.io/awtherllc/arelle:1

ADD . /usr/src/app/arelle/plugin/EdgarRenderer

EXPOSE 8080
ENTRYPOINT [ "python", "arelleCmdLine.py", "--webserver=0.0.0.0:8080", "--plugins=EdgarRenderer", "--disclosureSystem=efm-pragmatic", "--debugMode"]