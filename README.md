# Projeto de Testes Automatizados com BDD, Behave e Python

Este projeto demonstra a criação de testes automatizados de API utilizando a abordagem de Desenvolvimento Guiado por Comportamento (BDD). Os testes foram escritos com Gherkin/Behave em Python e validam o endpoint de login de uma API pública.

## 🚀 Tecnologias Utilizadas

- **Python 3.x:** Linguagem de programação principal.
- **Behave:** Framework de BDD para escrever cenários de teste em Gherkin.
- **Requests:** Biblioteca para realizar as chamadas HTTP à API.
- **API de Teste:** [Reqres.in](https://reqres.in/) (uma API pública para prototipagem e testes).

## 📋 Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina:

- [Git](https://git-scm.com)
- [Python 3.x](https://www.python.org/)
- [Make](https://community.chocolatey.org/packages/make) (para usuários Windows, pode ser instalado via Chocolatey)

## ⚙️ Como Configurar e Instalar o Projeto

Siga os passos abaixo para configurar o ambiente de desenvolvimento localmente.

1.  **Clone o repositório:**

    ```bash
    git clone [https://github.com/SEU-USUARIO/testes-bdd-api-python.git](https://github.com/Rychardsson/testes-bdd-api-python.git)
    cd testes-bdd-api-python
    ```

2.  **Crie e ative um ambiente virtual:**

    - No Windows:
      ```bash
      python -m venv venv
      .\venv\Scripts\activate
      ```
    - No Linux/macOS:
      ```bash
      python3 -m venv venv
      source venv/bin/activate
      ```

3.  **Instale as dependências usando o Makefile:**
    ```bash
    make install
    ```
    _(Este comando irá ler o arquivo `requirements.txt` e instalar as bibliotecas `behave` e `requests`)_.

## ▶️ Como Executar os Testes

Com o ambiente virtual ativo, use o seguinte comando para rodar todos os cenários de teste definidos:

```bash
make test
```
