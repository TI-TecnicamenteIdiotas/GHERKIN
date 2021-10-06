#encoding: UTF-8
#language: en
Feature: Criar uma conta no sistema de busca de vagas
    Scenario: Cadastro no Sistema com todos os dados necessários
        Given Que o usuário ainda não tenha uma conta no sistema
        When O usuário acessar o sistema e clicar na opção realizar cadastro
        And Inserir todos os dados necessários para se cadastrar no sistema
        And Todos os dados forem aceitos pelo sistema de cadastro
        Then O sistema irá demonstrar para o usuário que o cadastro foi efetivado com sucesso

    Scenario: Cadastro no Sistema com dados necessários faltando
        Given Que o usuário ainda não tenha uma conta no sistema
        When O usuário acessar o sistema e clicar na opção realizar cadastro
        And Inserir todos os dados necessários para se cadastrar no sistema
        And Todos os dados forem recusados pelo sistema de cadastro
        Then O sistema irá demonstrar para o usuário que o cadastro foi recusado e mostrará o motivo do erro

