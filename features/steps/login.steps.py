from behave import given, when, then
import requests
import json

# Passo do Contexto
@given('que a URL da API de login é "{url}"')
def step_impl_given_url(context, url):
    """
    Armazena a URL da API no contexto do Behave.
    """
    context.api_url = url

# Passos do Cenário
@given('que o usuário informou o email "{email}" e a senha "{password}"')
def step_impl_given_credentials(context, email, password):
    """
    Cria o corpo da requisição (payload) com as credenciais.
    """
    context.login_payload = {
        "email": email,
        "password": password
    }

@when('ele envia os dados para a API de login')
def step_impl_when_send_request(context):
    """
    Envia uma requisição POST para a API de login com o payload.
    A resposta é armazenada no contexto.
    """
    response = requests.post(context.api_url, json=context.login_payload)
    context.response = response

@then('a resposta da API deve ter o status code {status_code:d}')
def step_impl_then_check_status_code(context, status_code):
    """
    Verifica se o status code da resposta é o esperado.
    """
    assert context.response.status_code == status_code, \
        f"Esperado status code {status_code}, mas foi obtido {context.response.status_code}"

@then('a resposta deve conter o token de autenticação')
def step_impl_then_check_token(context):
    """
    Verifica se a resposta JSON contém a chave 'token'.
    """
    response_json = context.response.json()
    assert 'token' in response_json, "A chave 'token' não foi encontrada na resposta da API"
    print(f"Token recebido: {response_json['token']}")