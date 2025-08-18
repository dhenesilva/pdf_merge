@echo off
echo ========================================
echo   SCRIPT PARA SUBIR PROJETO NO GIT
echo ========================================
echo.

 Pergunta o caminho do projeto
set p projeto=Digite o caminho da pasta do projeto 
cd d %projeto%

 Pergunta a URL do repositorio remoto
set p repo=Digite a URL do repositorio remoto (ex httpsgithub.comuserrepositorio.git) 

 Pergunta a mensagem do commit
set p msg=Digite a mensagem do commit 

echo.
echo Iniciando processo...

 Inicializa repositório (se não existir)
git init

 Adiciona todos os arquivos
git add .

 Cria o commit
git commit -m %msg%

 Define branch main (caso ainda não exista)
git branch -M main

 Conecta ao remoto (se ainda não tiver configurado)
git remote remove origin 2nul
git remote add origin %repo%

 Envia para o GitHub
git push -u origin main

echo.
echo ========================================
echo   PROJETO ENVIADO COM SUCESSO!
echo ========================================
pause
