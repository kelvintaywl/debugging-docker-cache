FROM cimg/base:stable

COPY foo.txt ./
COPY bar.txt ./
COPY fizz/ fizz/

RUN ls -laH && (tar -cf - . | md5sum)
