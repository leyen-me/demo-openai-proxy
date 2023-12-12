FROM node:18

ENV TZ=Asia/Shanghai

RUN mkdir -p /openai-proxy

WORKDIR /openai-proxy

COPY . /openai-proxy

RUN npm i pnpm -g

RUN pnpm i

EXPOSE 80

ENTRYPOINT ["pnpm", "dev"]