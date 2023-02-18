#!/bin/bash
user=$(whoami)
while :
do
echo "Bienvenido a GitUp $user"
echo "1. Git Init"
echo "2. Git Remote"
echo "3. Git Status"
echo "4. Git Add"
echo "5. Git Commit"
echo "6. Git Push"
echo "7. Git clone"
echo "8. Git Pull"
echo "9. Exit"

read quehacer
	case $quehacer in
		1) echo "Introduzca el URL.."
			read ssh
			echo "Inicializando...";
			echo "# Inicializando" >> README.md
			git init
			git add README.md
			git commit -m "first commit"
			git branch -M main
			git remote add origin $ssh
			git push -u origin main
			;;		
		2) echo "Introduzca el nombre del repositorio y el URL.."
			read name remote
        		echo "Agregando Repositorio Remoto ";
        		git remote add $name $remote
			git branch -M main
			git push -u origin main
			;;
		3) echo "Actualizando el Status";
			git status
			;;		
		4) echo "Agregando Nuevos Repositorios";
			git add .
			;;
		5) echo "Escriba su mensaje para el commit"
			read commit
			echo "Comentario";
			git commit -m $commit
			;;
		6) echo "Subiendo actualización";
			git push
			;;
		7) echo "Introduzca el URL.."
			read clone
			echo "Clonando...";
			git clone $clone
			;;
		8) echo "Revisando Actualizaciones Externas";
			git pull
			;;
		9) echo "Bye Bye... $user";
        		exit 1
			;;
	esac
done
