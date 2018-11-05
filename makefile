all: readme.md

readme.md:
	echo "# Guessing game project" > README.md
	echo "" >> README.md
	echo $(shell date +"%Y-%m-%d %H-%M-%S") >> README.md
	echo "" >> README.md
	echo total $(shell wc -l guessinggame.sh) lines >> README.md
