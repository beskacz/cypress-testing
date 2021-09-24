FROM cypress/browsers:node14.17.0-chrome91-ff89

# syntax=docker/dockerfile:1
WORKDIR /code
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask", "run"]