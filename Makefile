.PHONY: docker_build
docker_build:
	docker build -t n3wborn/vite-ts:latest .

.PHONY: install
install:
	docker run --rm -it --name vite-ts -u "node" \
		-w /home/node/app \
		-v $(CURDIR):/home/node/app \
		-p 3003:3000 \
		n3wborn/vite-ts:latest \
		yarn install

.PHONY: dev
dev:
	docker run --rm -it --name vite-ts -u "node" \
		-w /home/node/app \
		-v $(CURDIR):/home/node/app \
		-p 3003:3000 \
		n3wborn/vite-ts:latest \
		yarn dev

.PHONY: build
build:
	docker run --rm -it --name vite-ts -u "node" \
		-w /home/node/app \
		-v $(CURDIR):/home/node/app \
		-p 3003:3000 \
		n3wborn/vite-ts:latest \
		yarn build
