var database = require("../database/config")

function autenticar(fkUsuario) {
    var instrucaoSql = `
        SELECT sum(acertos) as acertos FROM dominio
        WHERE fkUsuario = '${fkUsuario};'`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}



// Coloque os mesmos parâmetros aqui. Vá para a var instrucaoSql
function cadastrar(acertos, erros, fkTema, fkUsuario) {
    //console.log("ACESSEI O dominio MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", nome, email, senha);
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucaoSql = `
        INSERT INTO dominio (acertos, erros, fkTema, fkUsuario) VALUES ('${acertos}', '${erros}', '${fkTema}', '${fkUsuario}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    autenticar,
    cadastrar
};