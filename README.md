# Projeto: Teste Fullstack Fusion (Laravel + Next.js)

## 📌 Sobre o Projeto
Este projeto consiste em uma aplicação **full-stack** para gestão de produtos. O backend é desenvolvido em **Laravel**, fornecendo uma API RESTful, enquanto o frontend utiliza **Next.js** para exibir e gerenciar os produtos.

---

## 🚀 Tecnologias Utilizadas
- **Backend:** Laravel 10, MySQL
- **Frontend:** Next.js 14, Tailwind CSS, Shadcn/ui, Axios
- **Ferramentas:** Postman, Docker (opcional)

---

## 🔧 Backend (Laravel)
### 1️⃣ Modelo de Dados
A aplicação possui uma tabela `products` com os seguintes campos:

| Campo       | Tipo          | Descrição                     |
|------------|--------------|-------------------------------|
| `id`       | auto-incremento | Identificador único |
| `name`     | string (255)  | Nome do produto (obrigatório) |
| `description` | text       | Descrição detalhada do produto |
| `price`    | decimal      | Preço do produto (obrigatório, positivo) |
| `quantity` | inteiro      | Quantidade em estoque (obrigatório, não negativo) |
| `created_at` / `updated_at` | timestamp | Datas de criação/atualização |

### 2️⃣ Endpoints da API
| Método | Rota | Descrição |
|--------|------|-----------|
| **GET** | `/api/products` | Listar todos os produtos |
| **GET** | `/api/products/{id}` | Obter detalhes de um produto |
| **POST** | `/api/products` | Criar novo produto |
| **PUT** | `/api/products/{id}` | Atualizar produto existente |
| **DELETE** | `/api/products/{id}` | Excluir produto |

### 3️⃣ Validações
- `name`: Obrigatório, máximo de 255 caracteres.
- `price`: Obrigatório, deve ser um número positivo.
- `quantity`: Obrigatório, deve ser um número inteiro não negativo.

### 4️⃣ Requisitos de Implementação
- Criar migrations para estruturar a tabela no banco de dados.
- Implementar um `ProductResource` para formatar as respostas da API.
- Testar os endpoints utilizando Postman.

---

## 💻 Frontend (Next.js)
### 1️⃣ Páginas
| Caminho | Descrição |
|---------|-----------|
| `/` | Lista todos os produtos |
| `/products/create` | Formulário para adicionar novo produto |
| `/products/edit/{id}` | Formulário para editar um produto |

### 2️⃣ Funcionalidades
- Exibir lista de produtos com nome, preço e quantidade.
- Botões para **editar** e **excluir** produtos.
- Validações nos formulários (campos obrigatórios).
- Redirecionamento automático após ações bem-sucedidas.

### 3️⃣ Requisitos de Implementação
- Utilizar **Axios** ou **Fetch** para consumir a API Laravel.
- Estilização com **Tailwind CSS** e **Shadcn/ui**.
- Implementação de tratamento de erros (exibir mensagens caso a API falhe).

---

## 🛠 Setup do Banco de Dados
1. Configure as credenciais do MySQL no arquivo **.env** do Laravel.
2. Execute as migrations:
   ```sh
   php artisan migrate
   ```

## 🎯 Como Rodar o Projeto
### 🔹 Backend (Laravel)
1. Clone o repositório e acesse a pasta do projeto:
   ```sh
   git clone https://github.com/PedroBarrosDev/FusionTeste.git
   cd backend
   ```
2. Instale as dependências:
   ```sh
   composer install
   ```
3. Configure o **.env**
   ```sh
   ```
4. Configure o banco de dados e rode as migrations:
   ```sh
   php artisan migrate
   ```
5. Inicie o servidor:
   ```sh
   php artisan serve
   ```

### 🔹 Frontend (Next.js)
1. Acesse a pasta do frontend e instale as dependências:
   ```sh
   cd frontend
   npm install
   ```
2. Inicie o servidor de desenvolvimento:
   ```sh
   npm run dev
   ```
3. Acesse o frontend no navegador: `http://localhost:3000`
