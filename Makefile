.PHONY: install dev stop log_frontend log_bff

# 依存関係のインストール
install:
	@echo "[INFO] Installing dependencies for Frontend..."
	@cd apps/frontend && pnpm install
	@echo "[INFO] Installing dependencies for BFF..."
	@cd apps/bff && pnpm install

# 開発環境の立ち上げ
dev:
	@echo "[INFO] Starting Frontend and BFF services..."
	@cd apps/frontend && docker-compose up -d
	@cd apps/bff && docker-compose up -d

# コンテナの停止
stop:
	@echo "[INFO] Stopping Frontend and BFF services..."
	@cd apps/frontend && docker-compose down
	@cd apps/bff && docker-compose down

# フロントエンドのlog
log_frontend:
	@cd apps/frontend && docker-compose logs -f monorepo_sandbox_frontend

# バックエンドフォアフロントエンドのlog
log_bff:
	@cd apps/bff && docker-compose logs -f monorepo_sandbox_bff