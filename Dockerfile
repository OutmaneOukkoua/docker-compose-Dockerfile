FROM node:18 as builder

WORKDIR /app

RUN apt update && apt install git -y

RUN git clone https://github.com/OutmaneOukkoua/Online-Shop.git .

RUN npm i

ENV port 3000

EXPOSE ${port}
