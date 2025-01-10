version != jq -r '.version' package.json
name = simple-node-express-app
port = 3000
docker_tag = "${name}:${version}"

RED = "\033[0;31m"
YEL = "\033[0;33m"
NC = "\033[0m"

docker: Dockerfile
	@echo \\n${YEL}Внимание! В качестве тэга будет использован ${docker_tag}. Вы можете изменить тэг с помощью переменной окружения DOCKER_TAG${NC}\\n
	docker build -t ${docker_tag} .

docker-run: docker
	docker run -p ${port}:3000 -d ${docker_tag} && exit 0
