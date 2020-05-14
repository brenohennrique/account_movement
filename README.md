# Account Movement
Script desenvolvido com **[Ruby](https://www.ruby-lang.org/pt/) 2.6.3** para calcular o balanço da conta corrente dos clientes.

## Objectivo
O script recebe dois arquivos como parâmetros, sendo eles *./contas.csv* e *./transacoes.csv* e exibe o saldo final de cada *conta* com base em suas transações.
Todos os valores são devem estar em centavos de real *(inteiro)*.
Sempre que uma conta assumir um valor negativo, deve será aplicado uma multa de *R$ 3,00* em cada transação.

## Requisitos
Para estar utilizando a aplicação de utilizando a aplicação de uma maneira simples, foi utilizado **[Docker](https://www.docker.com/)** e o **Docker Compose** para orquestrar o *container* e assim executar o *script*.

**Passo 1**: Instalar o **[Docker](https://www.docker.com/)**.
**Passo 2**: Instalar o **Docker-Compose**.

## Utilização
Para estar executando a *script* foi criado um *container* utilizando a imagem do [Ruby](https://hub.docker.com/_/ruby).

Executar aplicação:
`docker-compose up`

## Dependências
- **C**
  - [CSV](https://ruby-doc.org/stdlib-2.6.1/libdoc/csv/rdoc/CSV.html): Dependência utilizada para ler e processar os arquivos CSV.
