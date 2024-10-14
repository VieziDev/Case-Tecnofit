# Case Tecnofit

Este projeto foi desenvolvido como parte do teste técnico para Tecnofit. Ele consiste em uma tela de login e na comunicação com um backend REST.

## Bibliotecas Utilizadas

- **Provider** (Gerenciamento de Estado)
- **GetIt** (Injeção de Dependência)
- **Http** (Chamadas HTTP)
- **Shared Preferences** (Persistência de Dados)

## Justificativa

Optei por utilizar fundamentos da Clean Architecture combinados com o Provider para gerenciamento de estado. Isso permite um projeto mais organizado, com responsabilidades bem separadas, tornando-o fácil de manter e escalar. O **Provider** foi escolhido pela simplicidade e flexibilidade ao gerenciar estados, enquanto o **GetIt** facilita a injeção de dependências e desacopla a lógica de construção de objetos.

## Estrutura do Projeto

- **/domain**: Contém as regras de negócio, como entidades e casos de uso.
- **/data**: Contém a implementação dos repositórios e comunicação com o backend.
- **/presentation**: Contém a camada de UI, gerenciada com o Provider.



## Instruções de uso

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/VieziDev/Case-Tecnofit.git
2. **Navegue até o diretório do projeto:**
   ```bash
   cd Case-Tecnofit
3. **Navegue até o diretório do projeto:**
   ```bash
   flutter pub get
4. **Navegue até o diretório do projeto:**
   ```bash
   flutter run
