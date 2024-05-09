## イメージしているシステム構成

```bash
pjt-root/
|
|- apps/
|    └ frontend/
|    |  └ docker-compose.yml　 # すべてDockerコンテナでそれぞれ管理する
|    └ bff/　
|       └ docker-compose.yml
|- services/
|    |- backend-go/
|    |  └ docker-compose.yml
|    └ backend-php/
|       └ docker-compose.yml
|
|- packages/
|    └ shared/ # 共通の型定義、共通utils等
|        |- types/
|        └  utils/
|- package.json
|- tsconfig.json
|- pnpm-lock.yaml
|- pnpm-workspace.yaml # pnpm workspace で管理する
└ Makefile # 開発コマンドの統一のため、Makefile を用いる
```
