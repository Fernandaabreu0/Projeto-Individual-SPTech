var dominioModel = require("../models/dominioModel");


function autenticar(req, res) {
    var fkUsuario = req.body.fkUsuarioServer
   
    
        dominioModel.autenticar(fkUsuario)
            .then(function (resultadoAutenticar) {
                console.log(`Resultados encontrados: ${resultadoAutenticar.length}`);
                console.log(resultadoAutenticar);

                if (resultadoAutenticar.length > 0) {
                    res.json({
                        acertos: resultadoAutenticar[0].acertos,
                
                    });
                }
            })
            .catch(function (erro) {
                console.log(erro);
                console.log("Houve um erro ao realizar o quiz!", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            });

        }    

function cadastrar(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var acertos = req.body.certasServer;
    var erros = req.body.erradasServer;
    var fkTema = req.body.fkTemaServer;
    var fkUsuario = req.body.fkUsuarioServer;
   

        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        dominioModel.cadastrar(acertos, erros, fkTema, fkUsuario)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o quiz! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }


module.exports = {
    autenticar,
    cadastrar
}