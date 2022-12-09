# Define base image, need to use python 3.5 for maximum compatibility as metapy doesn't work with latest version of python
FROM python:3.5.10
 
# Set working directory for the project
WORKDIR /app
 
COPY requirements.txt requirements.txt

RUN echo "Installing prerequisites..."
RUN pip install -r requirements.txt
 
ENTRYPOINT ["python"]
