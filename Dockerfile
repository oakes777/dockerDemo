# choose best image with few vulnerabilities
FROM node:20-alpine

# docker build -t dockerdemo
# docker build -t ghcr.io/auberonedu/auberon-demo
# docker push ghrc.io/auberonedu/auberon-demo
WORKDIR /app

COPY . .

# docker run -p 3001:3000 -it dockerdemo (first port is browser, 2nd is VM port)
EXPOSE 3000

RUN npm install

# this is how Docker knows (setting an env variable)
ENV VIDEO_DIR=/videos

# CMD allows for startup commands to run, very flexible
CMD [ "npm", "start" ]

# go to github, packages, change visibility of package to public