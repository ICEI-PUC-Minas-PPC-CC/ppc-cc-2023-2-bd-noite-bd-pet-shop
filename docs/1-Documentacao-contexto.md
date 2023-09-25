# 1. Introdução

- Este projeto de banco de dados busca resolver a ineficiência na gestão de clientes e serviços de um pet shop, substituindo processos manuais por um sistema centralizado. Ao registrar informações detalhadas sobre clientes, animais de estimação e serviços, o pet shop poderá aprimorar o atendimento ao cliente, agendamentos, faturamento e análises de negócios, proporcionando uma solução tecnológica para um problema comum no setor.


#### 1.1 Entidades Encontradas
- As entidades encontradas foram: Clientes, Consulta, Serviços, Animal e Funcionario. 

#### 1.2 Contexto das Entidades
- Clientes: Ter informações sobre o historico de serviços, caracteristicas pessoais e formas de contatos.
- Serviços: Ter informações sobre o tipo, o valor cobrado, o valor do custo e o tempo estimado.
- Animal: Conter informaçoes sobre a caracterisca do animal, a especie, a idade e a raça.
- Funcionário: Informações pessoais sobre os funcionário, como o horario de expediente, o salario e contato.
- Produtos: Informações sobre os produtos utilizados nos serviços, ajudando a calcular o faturamento final.

#### 1.3  Levantamento Inicial Entidades x Atributos
- Clientes: 
  - id; 
  - nome; 
  - idade; 
  - cpf; 
  - telefone; 
  - email; 
  - endereço; 
  - created_at; 
  - updated_at.


- Serviços: 
  - id;
  - nome; 
  - descricao; 
  - tempoestimado;
  - preco; 
  - custo; 
  - created_at;
  - updated_at.

    
- Animal: 
  - id; 
  - nome; 
  - raca;
  - especie; 
  - idade; 
  - peso; 
  - observacao; 
  - created_at; 
  - updated_at.


- Funcionario: 
  - id; 
  - nome; 
  - setor; 
  - salario; 
  - horario; 
  - created_at;
  - updated_at.

# 2. Relacionamentos

  A tabela "Consulta" é o centro de nosso sistema de gerenciamento, registrando detalhes cruciais de cada serviço para clientes e seus animais. Isso nos permite lembrar de preferências, agendar com eficiência, manter as finanças organizadas e oferecer um atendimento personalizado. Além disso, ela nos ajuda a aprender e melhorar nossos serviços ao longo do tempo. É fundamental para garantir que a consulta seja realizada da melhor forma possivel.

  #### 2.1 Contexto dos Relacionamentos
  
   - Consulta: Informações sobre o cliente e o serviço, para manter o controle do histórico de serviço, o valor combinado, a data que o serviço foi realizado.
   -  Cliente_animal: Os clientes estão relacionados aos animais de estimação que possuem. Cada cliente pode ter um ou mais animais associados, registrando informações como espécie, idade e raça. Isso ajuda na personalização dos serviços.

#### 2.2  Levantamento Inicial Entidades x Atributos
- Consulta:
  - id;
  - idcliente;
  - idservico;
  - idanimal;
  - idfuncionario;
  - created_at;
  - updated_at.
 
- Cliente_Animal
  - id
  - idcliente
  - idanimal
  - data_adicao
  - relacao
  - created_at;
  - updated_at.
