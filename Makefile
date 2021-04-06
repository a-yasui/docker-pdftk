buildx:
	docker buildx build --platform linux/amd64,linux/arm64/v8 -t "atyasu/pdftk" --push .

build:
	docker build -t "atyasu/pdftk" .
