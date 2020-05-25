FROM alpine:3.8
MAINTAINER TAH <tinganhsu@gmail.com>
USER root
ENV BAIDUPCS_VERSION 3.7.2
WORKDIR /

RUN	set -x && \
	apk add --no-cache --update wget unzip && \
	#wget --no-check-certificate http://qiniu.zoranjojo.top/BaiduPCS-Go-${BAIDUPCS_VERSION}-linux-amd64.zip && \
	wget --no-check-certificate https://github.com/Erope/baidupcs-web/releases/download/${BAIDUPCS_VERSION}-pre/BaiduPCS-Go-v${BAIDUPCS_VERSION}-linux-amd64.zip && \
	unzip BaiduPCS-Go-v${BAIDUPCS_VERSION}-linux-amd64.zip && \
	mv BaiduPCS-Go-v${BAIDUPCS_VERSION}-linux-amd64 BaiduPCS && \
	mkdir -p /opt/BaiduPCS && \
	cp -f BaiduPCS/* /opt/BaiduPCS/ && \
	rm -rf BaiduPCS* && \
	apk del wget unzip

#VOLUME ["/download"]
VOLUME ["/root/.config/BaiduPCS-Go"]
COPY docker-entrypoint.sh /
RUN chmod 777 docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 5299
