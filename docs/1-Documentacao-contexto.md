# 1. Introdução

- Este projeto de banco de dados busca resolver a ineficiência na gestão de clientes e serviços de um pet shop, substituindo processos manuais por um sistema centralizado. Ao registrar informações detalhadas sobre clientes, animais de estimação e serviços, o pet shop poderá aprimorar o atendimento ao cliente, agendamentos, faturamento e análises de negócios, proporcionando uma solução tecnológica para um problema comum no setor.


#### 1.1 Entidades Encontradas
- As entidades encontradas foram: Clientes, Consulta, Serviços, Animal e Funcionario. 

#### 1.2 Contexto das Entidades
- Clientes: Ter informações sobre o historico de serviços, caracteristicas pessoais e formas de contatos.
- Serviços: Ter informações sobre o tipo, o valor cobrado, o valor do custo e o tempo estimado.
- Animal: Conter informaçoes sobre a caracterisca do animal, a especie, a idade e a raça.
- Funcionário: Informações pessoais sobre os funcionário, como o horario de expediente, o salario e contato.
- Consulta: Informações sobre o cliente e o serviço, para manter o controle do histórico de serviço, o valor combinado, a data que o serviço foi realizado.

#### 1.3  Levantamento Inicial Entidades x Atributos
Clientes 
    id
    nome
    idade
    cpf
    telefone
    email
    endereço
    created_at
    updated_at

Serviços
    id
    nome
    descricao
    tempoestimado
    preco
    custo
    created_at
    updated_at
    
Animal
    id
    nome
    raca
    especie
    idade
    peso
    observacao
    created_at
    updated_at

Funcionario
    id
    nome
    setor
    salario
    horario
    created_at
    updated_at

Consulta
    id
    idcliente
    idservico
    idanimal
    idfuncionario
    created_at
    updated_at



