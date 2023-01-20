#!/bin/bash
diretorio=/home/viniciusgiovanni/FIELD_ACADEMY;

main(){
	echo "Escolha uma opção:"
	echo "1 -Caso não exista pasta FIELD_ACADEMY, criar a pasta e o arquivo helloWorld.js dentro dela"
	echo "2 - Caso exista a pasta FIELD_ACADEMY, criar somente o arquivo helloWorld.js dentro da pasta"
	read opcao;
	case $opcao in
	"1")
		mkdir $diretorio;
        	echo "Pasta criada!"; 
		touch $diretorio/helloWorld.js;
		echo "Arquivo criado!";
	;;
	"2")
		touch $diretorio/helloWorld.js;
		echo "Arquivo criado!";
	;;
 esac
}
instalarnode(){
	echo "O Node.js já está instalado?"
	echo "1- Caso deseja instalar"
	echo "2- Caso já esteja instalado"
        read opcao2;
        case $opcao2 in
	"1")
	curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
        sudo apt-get install -y nodejs
	echo "Instalado com sucesso!";
        ;;
        "2")
	echo "Já pode rodar o Node.js :)"
	;;
 esac
}

acessarArquivo(){
	echo "console.log('Hello World!')" >> helloWorld.js;
      	node helloWorld.js;
}
moverArquivo(){
	echo "Movendo o arquivo..."
	mv helloWorld.js /home/viniciusgiovanni
	echo "Arquivo movido com sucesso!"
}
fimProcesso(){
	echo "Selecione uma opção para compactar a pasta:"
	echo "1- Compactar como .zip"
	echo "2- Compactar como .tar"
	read opcao3;
	case $opcao3 in
	"1")
		zip -r FIELD_ACADEMY.zip $diretorio
 		echo "Apagando a pasta"
	;;
	"2")
		tar -czf FIELD_ACADEMY.tar $diretorio	
		echo "Apagando a pasta"
	;;
 esac
}
main
instalarnode
acessarArquivo
moverArquivo
fimProcesso
