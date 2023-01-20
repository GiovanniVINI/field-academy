#!/bin/bash
diretorio=/home/viniciusgiovanni/FIELD;
diretorioRaiz=/home/viniciusgiovanni;
if [ -d $diretorio ]; then
	echo "A pasta já existe";
	cd $diretorio;
	curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
	sudo apt-get install -y nodejs
	echo "console.log('Hello World!')" >> helloWorld1.js;
	node helloWorld1.js;
else
	mkdir $diretorio;
	cd $diretorio;
	touch helloWorld1.js;
	echo "Pasta criada";
	curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
	sudo apt-get install -y node.js
	echo "console.log('Hello World!')" >> helloWorld1.js;
	node helloWorld1.js
fi
mv helloWorld1.js /home/viniciusgiovanni/
tar -czf FIELD_ACADEMY.tar $diretorioRaiz
rm -rf /home/viniciusgiovanni/FIELD 
