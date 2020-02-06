NAME = potree-convertor

build-dev:
	docker build . --tag ${NAME} --target dev

dev: build-dev
	docker run -it \
	-v ${PWD}/src:/src \
	-w /src \
	--privileged \
	${NAME}
