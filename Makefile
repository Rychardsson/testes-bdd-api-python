# Makefile para automatizar tarefas do projeto BDD

# O .PHONY declara que estes nomes são "alvos falsos", ou seja,
# não são nomes de arquivos reais que o make deve procurar.
.PHONY: help install test freeze

# Alvo padrão, executado se você digitar apenas "make"
help:
	@echo "--------------------------------------------------"
	@echo "Comandos disponiveis para o projeto:"
	@echo "  make install    - Instala as dependencias do projeto"			
	@echo "  make test       - Roda os testes BDD com o Behave"
	@echo "  make freeze     - Gera/atualiza o arquivo requirements.txt"
	@echo "--------------------------------------------------"

# Alvo para instalar dependências
install:
	@echo "Instalando dependencias do requirements.txt..."
	pip install -r requirements.txt

# Alvo para rodar os testes
test:
	@echo "Executando testes BDD..."
	behave

# Alvo para gerar o requirements.txt (boa prática)
freeze:
	@echo "Gerando requirements.txt com as dependencias atuais..."
	pip freeze > requirements.txt