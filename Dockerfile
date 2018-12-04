FROM python:3.6
LABEL maintainer="dev@cuenca.com"

# Install app
ADD Makefile requirements.txt /arcusd/
WORKDIR /arcusd
RUN pip install --quiet --upgrade pip
RUN make install

# Add project content to image
ADD . /arcusd/