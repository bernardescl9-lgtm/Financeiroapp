ls
rm -rf public/*
mkdir -p public
nano public/index.html
python3 -m http.server 8000
firebase deploy --only hosting
rm -rf public/*
cd ~/agrocontrole
ls
rm -rf public/*
mkdir -p public
cd public
nano index.html
firebase deploy --only hosting
firebase deploy --only hostincd ~/agrocontrole
rm -rf public/*mkdir -p public
nano public/index.html
cd ~/agrocontrole
pwd
/ls
mkdir public
rm -rf public/*
ls public
nano public/index.html
ls public
cd ~/agrocontrole
ls public
firebase login
firebase init hosting
firebase deploy --only hosting
cd ~/agrocontrole
pwd
ls public
rm -rf public/*
mkdir -p public
nano public/index.html
firebase deploy --only hosting
termux-setup-storage
|cd /storage/emulated/0/
-ls
rm -rf Temus
ls
cd /storage/emulated/0/
mkdir Temus
cd Temus
|cp /storage/emulated/0/Download/* ./
nano index.html
-rm -rf public
mkdir -p public
rm -rf public
mkdir -p public
nano public/index.html
rm -rf ~/agrocontrole/public
mkdir -p ~/agrocontrole/public
cat > ~/agrocontrole/public/index.html
cd ~
rm -rf firebase-users
mkdir firebase-users
cd firebase-users
pwd
pkg install nodejs -y       # Instala Node.js
node -v                     # Confirma versão do Node
npm -v                      # Confirma versão do npm
npm init -y                  # Cria package.json
npm install firebase-admin readline-sync fs  # Instala dependências
nano serviceAccountKey.json
cd ~
rm -rf firebase-users
mkdir firebase-users
cd firebase-users
pwd
pkg install nodejs -y       # Instala Node.js
node -v                     # Confirma versão do Node
npm -v                      # Confirma versão do npm
npm init -y                  # Cria package.json
npm install firebase-admin readline-sync fs  # Instala dependências
nano serviceAccountKey.json
nano app.js
node app.js
cd ~
cd firebase-users
mkdir firebase-users
cd firebase-users
pkg update -y
pkg install nodejs -y
node -v
npm -v
npm init -y
npm install firebase-admin readline-sync fs
nano serviceAccountKey.json
npm install firebase-admin readline-sync fsnano app.js
nano app.js
node app.js
nano app.js
ls
ls -lh app.js
nano ./app.js
head -n 20 app.js
node app.js
cd ~/firebase-users/firebase-users
node teste.js
nano atualiza_dose.js
cd ~/firebase-users/firebase-users/node atualiza_dose.js
nano app.js
# cole o código e salve: Ctrl+O → Enter → Ctrl+X
node app.js
nano app.js
node app.js
nano app.js
node app.js
nano app.js
cd ~/firebase-users/firebase-users
nano app.js
node app.js
cd ~/firebase-users/firebase-users
node app.js
ls -lh backup_lancamentos.json
cat backup_lancamentos.json
cd ~/firebase-users/firebase-users
nano app.js
node app.js
cd ~/firebase-users/firebase-users
nano app.js
node app.js
pkg update && pkg upgrade -y
pkg install nodejs git nano -y
cd ~/firebase-users/firebase-users
git init
git add .
git commit -m "Versão nova do projeto"
git branch -M main
git remote add origin <URL_DO_SEU_REPOSITORIO>
git push -u origin main
git config --global user.name "Claudinei Oliveira"
git config --global user.email "bernardescl9@gmail.com"
git add .
git commit -m "Versão nova do projeto"
git branch -M main
git remote add origin <URL_DO_SEU_REPOSITORIO>
git push -u origin main
cd ~/firebase-users/firebase-users
git config --global user.name "Claudinei Oliveira"
git config --global user.email "bernardescl9@gmail.com"
git init
git add .
git commit -m "Versão nova do projeto"
git branch -M main
git remote add origin <URL_DO_SEU_REPOSITORIO>
git push -u origin main
git clone <URL_DO_SEU_REPOSITORIO>
cd firebase-users
cd ~/firebase-users/firebase-users
git config --global user.name "Claudinei Oliveira"
git config --global user.email "bernardescl9@gmail.com"
git init
# 1️⃣ Entrar na pasta do projeto
cd ~/firebase-users/firebase-users
# 2️⃣ Configurar Git (uma vez só, para evitar erros de identidade)
git config --global user.name "Claudinei Oliveira"
git config --global user.email "bernardescl9@gmail.com"
# 3️⃣ Inicializar repositório Git (se ainda não tiver)
git init
# 4️⃣ Adicionar todos os arquivos
git add .
# 5️⃣ Fazer commit da versão nova
git commit -m "Versão nova do projeto"
# 6️⃣ Criar ou renomear branch principal
git branch -M main
# 7️⃣ Adicionar repositório remoto (substitua pela URL do seu GitHub)
git remote add origin <URL_DO_SEU_REPOSITORIO>
# 8️⃣ Enviar para o GitHub
git push -u origin main
cd ~/firebase-users/firebase-users
git config --global user.name "Claudinei Oliveira"
git config --global user.email "bernardescl9@gmail.com"
git init
git add .
git commit -m "Versão nova do projeto"
git branch -M main
git remote add origin https://github.com/SEU_USUARIO/NOME_DO_REPOSITORIO.git
git push -u origin main
git remote remove origin
ssh-keygen -t ed25519 -C "seu_email@exemplo.com"
pkg update && pkg upgrade
pkg install nodejs git
node -v
npm -v
mkdir ~/AgroControleDashboard
cd ~/AgroControleDashboard
npm init -y
npm install express body-parser ejs firebase-admin pdfkit exceljs
mkdir -p public/css
node server.js
http://127.0.0.1:3000
ifconfig
http://SEU_IP:3000
node server.js
ls -l
nano server.js
ls -l
node server.js
nano server.js
node server.js
http://127.0.0.1:3000
node server.js
pwd
ls -l
npm install express body-parser firebase-admin pdfkit exceljs
ls node_modules
npm audit fix --force
node server.js
pkg update && pkg upgrade -y
pkg install nodejs -y
pkg install npm -y
cd ~
mkdir AgroControleDashboard
cd AgroControleDashboard
npm init -y
nano server.js
npm install express body-parser firebase-admin pdfkit exceljs readline-sync
ls -l
nano server.js
node server.js
nano server.js
const express = require('express');
const bodyParser = require('body-parser');
const admin = require('firebase-admin');
const PDFDocument = require('pdfkit');
const ExcelJS = require('exceljs');
const fs = require('fs');
const readline = require('readline-sync');
const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
// ===== FIREBASE =====
const serviceAccount = require('./serviceAccountKey.json'); // <-- coloque sua chave aqui
admin.initializeApp({
});
const db = admin.firestore();
// ===== CONFIGURAÇÃO ADMIN =====
const ADMIN_EMAIL = 'bernardescl9@gmail.com';
const ADMIN_SENHA = '123456';
// ===== FUNÇÕES =====
async function criarFazenda(nome, usuario){
}
async function criarProduto(nome, usuario){
}
async function adicionarLancamento(usuario, fazenda, produto, quantidade){
}
async function gerarPDF(email){
}
async function gerarExcel(email){
}
// ===== MENU CLI =====
(async function main(){
# Cria a pasta do projeto
mkdir ~/AgroControleDashboard
cd ~/AgroControleDashboard
# Cria a pasta do projeto
mkdir ~/AgroControleDashboard
cd ~/AgroControleDashboard
nano package.json
nano server.js
var admin = require("firebase-admin");
// Conecta com sua chave real do Firebase
var serviceAccount = require("./serviceAccountKey.json");
admin.initializeApp({
});
nano server.js
node server.js
nano server.js
nano package.json
npm install
nano package.json
nano server.js
npm install
node server.js
ls -l ~/AgroControleDashboard
nano ~/AgroControleDashboard/server.js
node server.js
nano ~/AgroControleDashboard/server.js
firebase init hosting
firebase deploy
cd ~/NOME_DA_PASTA_DO_PROJETO
ls
cat firebase.json
nano firebase.json
rm -rf "Use existing project"
ls
cat firebase.json
firebase deploy
https://agrocontrolepro.web.app/?v=30
mkdir financeiroapp
cd financeiroapp
mv ~/index.html .
ls
firebase login
firebase init hosting
firebase use --add
firebase use
firebase init hosting
firebase deploy
[200~firebase deploy~
pwd
cat firebase.json
cd ~
ls
rm firebase.json
rm .firebaserc
rm index.html
rm 404.html
ls
cd financeiroapp
pwd
ls -a
firebase init hosting
ls -a
firebase deploy
nano firebase.json
firebase deploy
nano firebase.json
nano firebase.jso
firebase deploy
cd ~/financeiroapp
-nano firebase.json
nano firebase.json
cat firebase.json
nano firebase.json
cat firebase.json
|firebase deploy
firebase deploy
cd ~/financeiroapp
pwd
nano index.html
cat index.html
cd ~/financeiroapp
pwd
cat firebase.json
firebase deploy
cd ~
mkdir financeiroapp
cd financeiroapp
nano index.html
firebase deploy
nano firebase.json
nano index.html
firebase deploy
nano ~/financeiroapp/firebase.json
cat ~/financeiroapp/firebase.json
ls ~/financeiroapp
firebase deploy
cd ~/financeiroapp
firebase login
firebase use --add
cd ~/financeiroapp
firebase init hosting
cd ~/financeiroapp
nano index.html
firebase deploy
cd ~/financeiroapp
pwd
nano firebase.jso
nano index.html
firebase deploy
cd ~/financeiroapp
ls
nano firebase.json
cat index.html
firebase login
firebase use --add
firebase use
firebase deploy
nano ~/financeiroapp/firebase.json
cat ~/financeiroapp/firebase.json
ls ~/financeiroapp
rm ~/financeiroapp/'Use an existing project'
rm ~/financeiroapp/'Use existing project →'
rm ~/financeiroapp/firebase.jso
ls ~/financeiroapp
rm -r ~/financeiroapp/'Use an existing project'
rm -r ~/financeiroapp/'Use existing project →'
ls ~/financeiroapp
firebase use default
firebase use --add
firebase deploy
cd ~/financeiroapp
nano index.html
<script>
// Pega do localStorage ou inicia vazio
let transacoes = JSON.parse(localStorage.getItem("financeiroBanco")) || [];
// Salvar no localStorage
function salvar() {   localStorage.setItem("financeiroBanco", JSON.stringify(transacoes));
}
// Mostrar ou esconder campo parcelas
function mostrarParcelas() {   let tipo = document.getElementById("tipo").value;
}
// Adicionar transação
function adicionar() {   let data = document.getElementById("data").value;
}
// Limpar campos
function limparCampos() {   ["data", "descricao", "valor", "parcelas"].forEach(id => document.getElementById(id).value = "");
}
// Atualizar resumo, histórico e gráfico
function atualizar() {   let entrada = 0, saida = 0, cartao = 0, emprestimo = 0;   let historicoHTML = "";   transacoes.forEach((t, idx) => {
}
// Alternar exibição das parcelas
function toggleParcelas(idx) {
}
// Gráfico de pizza
let grafico;
function gerarGrafico(e, s, c, em) {
}
// Gerar relatório PDF por mês
function baixarPDF() {   let mes = document.getElementById("mesRelatorio").value;
}
// Inicialização
["data", "descricao", "valor", "tipo", "parcelas"].forEach((id, i) => {
});
atualizar();
</script>
firebase deploy
[200~cd ~/financeiroapp~
ls
# Deve aparecer algo como:
# firebase.json  index.html
ls
# Deve aparecer algo como:
# firebase.json  index.html
[200~firebase login~
nano.html
cd ~/financeiroapp
nano index.html
firebase use default
firebase deploy
cd ~/financeiroapp
nano index.html
firebase use default
firebase deploy
cd /caminho/para/seu/projeto
nano index.html
nano app.js
nano style.css
nano app.js
nano style.css
firebase serve
cd ~/seu_projeto_firebase   # vá para a pasta do projeto
nano index.html
firebase serve
cd ~
mkdir financeiroapp
cd financeiroapp
pkg install nodejs
npm install -g firebase-tools
firebase login        # logue com sua conta Google
firebase init hosting
nano index.html
firebase deploy --only hosting
/nano.index.html
nanoindex.html
nano idex.html
firebase deploy --only hosting
Hosting URL: https://financeiroapp-6fe3d.web.app
nano index.html
firebase deploy --only hosting
Hosting URL: https://financeiroapp-6fe3d.web.app
cd ~/financeiroapp
ls
firebase deploy --only hosting
cd ~/financeiroapp
nano index.html
firebase deploy --only hosting
Hosting URL: https://financeiroapp-6fe3d.web.app
cd ~/financeiroapp-offline
mkdir ~/financeiroapp-offline
cd ~/financeiroapp-offline
pwd
/data/data/com.termux/files/home/financeiroapp-offline
pkg update && pkg upgrade -y
pkg install nodejs openjdk-17 git wget unzip -y
cp /storage/emulated/0/Download/index.html ~/financeiroapp-offline/
cp /storage/emulated/0/Download/style.css ~/financeiroapp-offline/
cp /storage/emulated/0/Download/script.js ~/financeiroapp-offline/
cp /storage/emulated/0/Download/chart.min.js ~/financeiroapp-offline/
cp -r /storage/emulated/0/Download/imagens ~/financeiroapp-offline/
cp /storage/emulated/0/Download/relatorio.pdf ~/financeiroapp-offline/
pkg update && pkg upgrade -y
pkg install nodejs git wget unzip openjdk gradle -y
pkg install openjdk-21 -y
java -version
ls /storage/emulated/0/Download/
ls "/storage/emulated/0/Download/finanças online/"
ls /storage/emulated/0/Download/
firebase login
firebase use --add   # seleciona seu projeto
firebase hosting:clone <nome-do-seu-projeto> www
/storage/emulated/0/Download/financas_online/
cd ..
cd ~/financeiroapp-online
/storage/emulated/0/Download/financas_online/
termux-setup-storage
ls "/storage/emulated/0/Download/"
