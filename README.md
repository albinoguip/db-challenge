# **Bike Stores Inc - SQL DBA Challenge**

### **Descrição do Projeto**
Este projeto contém a criação de tabelas, inserção de dados e consultas SQL para a base de dados fictícia da empresa **Bike Stores Inc**. O objetivo é realizar operações de consulta e extração de métricas relevantes para a equipe de Marketing e Comercial.

### **Tecnologias Utilizadas**
- **Banco de Dados**: SQLite
- **Ferramenta de Gerenciamento**: DBeaver
- **Linguagem**: SQL

### **Instalação e Uso do Projeto**

#### 1. Pré-requisitos
- Certifique-se de ter o **DBeaver** instalado. Você pode baixar a versão mais recente em [DBeaver.io](https://dbeaver.io/download/).
- Este projeto utiliza **SQLite** como banco de dados local. O DBeaver já tem suporte integrado para trabalhar com SQLite.

#### 2. Clonando o Repositório
Clone o repositório para a sua máquina local usando o seguinte comando no terminal:
```bash
git clone <link-do-repositorio>
```

#### 3. Configuração do Banco de Dados
1. Abra o **DBeaver** e crie uma nova conexão com o **SQLite**.
2. No momento da configuração da conexão, selecione ou crie um arquivo de banco de dados local, como `bike_stores.db`.
3. Abra o arquivo **schema.sql** no editor SQL do DBeaver e execute o script para criar as tabelas.
4. Abra o arquivo **data.sql** para inserir os dados de teste nas tabelas.
5. As consultas SQL necessárias estão no arquivo **queries.sql**, que pode ser executado para gerar os resultados exigidos pelo desafio.

#### 4. Executando as Consultas
- Após a criação das tabelas e inserção dos dados, execute as consultas SQL presentes no arquivo `queries.sql` para gerar as métricas e resultados pedidos.

### **Estrutura do Projeto**
- `README.md`: Documentação do projeto.
- `schema.sql`: Script SQL para a criação das tabelas.
- `data.sql`: Script SQL com dados fictícios para popular as tabelas.
- `queries.sql`: Script contendo as consultas SQL que respondem aos requisitos do desafio.
- `.gitignore`: Arquivo para ignorar arquivos desnecessários (como arquivos temporários do SQLite).

### **Referências**
This is a challenge by [Coodesh](https://coodesh.com/).