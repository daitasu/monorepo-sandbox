FROM node:22

# PNPM をインストール
RUN npm install -g pnpm

# コンテナ内の作業ディレクトリを設定
WORKDIR /app

# ホストの package.json ファイルをコピー
COPY ./package.json ./

# 依存関係をインストール
RUN pnpm install

EXPOSE 3031

# ソースコードをマウントしてサーバーを起動
CMD ["pnpm", "start:dev"]