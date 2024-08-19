# ベースイメージ
FROM python:3.10

# 作業ディレクトリの設定
WORKDIR /app

# 依存関係のインストール
COPY requirements.txt .
RUN pip install -r requirements.txt

# ソースコードをコンテナにコピー
COPY . .

# Gunicornでアプリケーションを起動
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "myproject.wsgi:application"]
