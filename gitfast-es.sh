#!/bin/bash

msg=$@
user=$(whoami)

show_usage() {
  echo -e "\nGITFAST - Herramienta de terminal para acelerar tu trabajo en GitHub."
  echo -e "\nUso:" 
  echo -e "   gitfast [mensaje]" 
  echo -e "\nOpciones:" 
  echo -e "   -h | --help Mostrar este manual.\n"
  echo -e "Buenas prácticas:" 
  echo -e "feat: Una nueva característica para el usuario". 
  echo -e "fix: Corrige un error que afecta al usuario". 
  echo -e "perf: Cambios que mejoran el rendimiento del sitio". 
  echo -e "build: Cambios en el sistema de compilación, tareas de implementación o instalación".
  echo -e "ci: Cambios en la integración continua". 
  echo -e "docs: Cambios en la documentación". 
  echo -e "Refactorización: Refactorización de código a medida que cambia el nombre de una variable o función".
  echo -e "estilo: Cambios de formato, tabulaciones, espacios o punto y coma, etc. No afectan al usuario." echo -e "prueba: agregue pruebas o refactorice una existente.\n" 
  echo -e "EJEMPLO:"
  echo -e "gitfast feat-web: Add new search feature\n"
  echo -e "Si estas recién comenzando, los puedes hacer en español:\n" 
  echo -e "gitfast Arreglo-web: Cambios menores en los bordes de un botón\n"
}

git_pull() {
   git pull
}

git_fast() {
  git status
  git add .
  git commit -m "$msg"
  git push
  git status
}

if [[ $msg = "" ]]
then
  echo "🚫 Campo de parámetros vacío"
  echo "💬 Debes poner un mensaje en tu confirmación !!"
  echo "   Ejemplo: gitfast tipo-alcance: descripción"
  exit
elif [[ $msg == "-h" || $msg == "--help" ]]
then
  show_usage
else
  echo "🧐 $user, Se subirán tus cambios...."
  git_pull && git_fast
fi
