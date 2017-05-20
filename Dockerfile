FROM linuxserver/sonarr
MAINTAINER ullbergm

# install packages
RUN \
 apt-get update && \
 apt-get install -y \
	ffmpeg \
	python-pip \
	python-dev \
	libffi-dev \
	libssl-dev \
	gcc \
	binutils \
	git \
	cmake && \
 pip install requests && \
 pip install requests[security] && \
 pip install requests-cache && \
 pip install babelfish && \
 pip install "guessit<2" && \
 pip install deluge-client && \
 pip install qtfaststart && \
 pip install "subliminal<2" && \
 pip install stevedore==1.19.1 && \

 rm -rf /tmp/* /var/lib/apt

