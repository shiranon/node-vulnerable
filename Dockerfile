# 脆弱性があるnodeを指定する
FROM node:14-alpine

# アプリケーションディレクトリを指定
WORKDIR /user/src/app

# yarnで管理する
COPY package.json yarn.lock ./

RUN yarn install

# ソースをバンドルする
COPY . .

# ポート3000を開放
EXPOSE 3000
CMD [ "yarn", "start" ]