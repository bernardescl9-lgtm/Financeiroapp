const admin = require('firebase-admin');
const readline = require('readline-sync');
const fs = require('fs');

// Inicializar Firebase
const serviceAccount = require('./serviceAccountKey.json');
admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
});

const db = admin.firestore();

// Configuração do administrador
const ADMIN_EMAIL = 'bernardescl9@gmail.com';
const ADMIN_SENHA = '123456';

// Funções principais
async function criarUsuario(email, senha){
  try{
    await admin.auth().createUser({email, password:senha});
    console.log(`Usuário criado: ${email}`);
  }catch(e){
    console.log(`Erro ao criar usuário ${email}: ${e.message}`);
  }
}

async function criarFazenda(nome, usuario){
  const doc = await db.collection('fazendas').add({nome, usuario});
  console.log(`Fazenda criada: ${nome} (ID: ${doc.id})`);
  return doc.id;
}

async function criarProduto(nome, usuario){
  const doc = await db.collection('produtosGlobais').add({nome, usuario});
  console.log(`Produto criado: ${nome} (ID: ${doc.id})`);
  return doc.id;
}

async function adicionarLancamento(usuario, fazenda, produto, quantidade, dose){
  const lancamento = {
    usuario,
    fazenda,
    produto,
    quantidade: Number(quantidade), // força número
    dose: Number(dose),             // força número
    tipo: "Aplicação Técnica",
    data: new Date().toISOString()  // padrão ISO
  };
  await db.collection('lancamentos').add(lancamento);
  console.log(`Lançamento salvo: ${produto} para ${fazenda} (${usuario})`);
}

// Histórico do usuário
async function verHistoricoUsuario(email){
  const snapshot = await db.collection('lancamentos')
                             .where("usuario", "==", email)
                             .get();
  console.log(`\n===== Histórico de ${email} =====`);
  snapshot.forEach(doc => {
    const data = doc.data();
    console.log(`Fazenda: ${data.fazenda} | Produto: ${data.produto} | Quantidade: ${data.quantidade} | Dose: ${data.dose} | Data: ${data.data}`);
  });
}

// Histórico completo do administrador
async function verHistoricoAdmin(){
  const snapshot = await db.collection('lancamentos').get(); // pega todos os lançamentos
  console.log("\n===== Histórico completo de todos os usuários =====");
  snapshot.forEach(doc => {
    const data = doc.data();
    console.log(`Usuário: ${data.usuario} | Fazenda: ${data.fazenda} | Produto: ${data.produto} | Quantidade: ${data.quantidade} | Dose: ${data.dose} | Data: ${data.data}`);
  });
}

// Backup do administrador
async function backupAdmin(){
  const snapshot = await db.collection('lancamentos').get();
  const backupData = snapshot.docs.map(doc => doc.data());
  fs.writeFileSync('backup_lancamentos.json', JSON.stringify(backupData, null, 2));
  console.log("Backup salvo em backup_lancamentos.json");
}

// Menu interativo
(async function main(){
  console.log("===== Login =====");
  const email = readline.questionEMail("E-mail: ");
  const senha = readline.question("Senha: ", { hideEchoBack: true });

  if(email === ADMIN_EMAIL && senha === ADMIN_SENHA){
    console.log("\n=== Bem-vindo Administrador ===");
    while(true){
      console.log("\n1 - Ver histórico completo");
      console.log("2 - Backup dos lançamentos");
      console.log("3 - Sair");
      const opc = readline.question("Escolha: ");

      if(opc === "1") await verHistoricoAdmin();
      else if(opc === "2") await backupAdmin();
      else if(opc === "3") break;
      else console.log("Opção inválida");
    }
  } else {
    console.log(`\n=== Bem-vindo ${email} ===`);
    while(true){
      console.log("\n1 - Criar fazenda");
      console.log("2 - Criar produto");
      console.log("3 - Adicionar lançamento");
      console.log("4 - Ver histórico");
      console.log("5 - Sair");
      const opc = readline.question("Escolha: ");

      if(opc === "1"){
        const nome = readline.question("Nome da fazenda: ");
        await criarFazenda(nome, email);
      } else if(opc === "2"){
        const nome = readline.question("Nome do produto: ");
        await criarProduto(nome, email);
      } else if(opc === "3"){
        const fazenda = readline.question("Nome da fazenda: ");
        const produto = readline.question("Nome do produto: ");
        const quantidade = parseFloat(readline.question("Quantidade aplicada: "));
        const dose = parseFloat(readline.question("Dose aplicada: "));
        await adicionarLancamento(email, fazenda, produto, quantidade, dose);
      } else if(opc === "4"){
        await verHistoricoUsuario(email);
      } else if(opc === "5") break;
      else console.log("Opção inválida");
    }
  }

  console.log("\n=== Sessão encerrada ===");
})();
