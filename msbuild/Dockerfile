FROM atlassian/default-image:latest

MAINTAINER Kinmarui

# Setup the locales

RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8  \
	LANGUAGE=en_US:en  \
	LC_ALL=en_US.UTF-8 \
	DEBIAN_FRONTEND=noninteractive

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
	&& echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list \
	&& apt-get update \
	&& apt-get install -y mono-complete \
	&& apt-get purge \
	&& ln -s /usr/bin/xbuild /usr/bin/msbuild.exe

