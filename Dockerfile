FROM java:8

MAINTAINER Go About <tech@goabout.com>

ENV VERSION=1.2.0 \
    JAVA_MX=1G \
    DOWNLOAD_LINK=https://repo1.maven.org/maven2/org/opentripplanner/otp/$VERSION/otp-$VERSION-shaded.jar

ADD $DOWNLOAD_LINK /usr/local/share/java/
RUN ln -s otp-$VERSION-shaded.jar /usr/local/share/java/otp.jar

COPY otp /usr/local/bin/
RUN chmod 755 /usr/local/bin/*

EXPOSE 8080
