# language: pt

Funcionalidade: Autenticação de Usuário
  Como um usuário da plataforma
  Eu quero poder me autenticar
  Para que eu possa acessar recursos protegidos

  Contexto:
    Dado que a URL da API de login é "https://reqres.in/api/login"

  Cenário: Usuário realiza login com sucesso
    Dado que o usuário informou o email "eve.holt@reqres.in" e a senha "cityslicka"
    Quando ele envia os dados para a API de login
    Então a resposta da API deve ter o status code 200
    E a resposta deve conter o token de autenticação