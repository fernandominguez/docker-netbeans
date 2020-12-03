FROM rafdouglas/eclipse_docker:eclipse_base_bionic

LABEL maintainer="fernandominguez"
# Hat Tip to rafdouglas/eclipse_base_bionic and fgrehm/docker-netbeans

LABEL org.label-schema.schema-version = "1.0"
LABEL org.label-schema.version = "NetBeans-12.1"
LABEL org.label-schema.description = "NetBeans docker"

LABEL org.label-schema.url="http://fernandominguez.es"
LABEL org.label-schema.vcs-url = "https://github.com/fernandominguez"
LABEL org.label-schema.docker.cmd = "sh ./netbeans"

# Install libgtk as a separate step so that we can share the layer above with
# the netbeans image
RUN sudo apt-get install -y unzip libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev

RUN wget https://downloads.apache.org/netbeans/netbeans/12.1/netbeans-12.1-bin.zip -O /tmp/netbeans.zip -q && \
    echo 'Installing netbeans' && \
    sudo unzip /tmp/netbeans.zip -d /opt && \
    rm /tmp/netbeans.zip

ADD run /usr/local/bin/netbeans

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
CMD /usr/local/bin/netbeans
