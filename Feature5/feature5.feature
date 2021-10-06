#encoding: UTF-8
#language: en
Feature: O Usuário Empresa deseja contatar usuários para se candidatarem a vaga fornecida por ela
    Scenario: O Usuário Empresa obtém sucesso ao contatar o Usuário padrão
        Given o usuário empresa esteja logado
        And possua no minimo 1 candidato cadastrado em no mínimo 1 vaga
        When o usuário empresa acessar o seu perfil empresarial
        Then 

    Scenario: O Usuário Empresa obtém uma falha ao contatar o Usuário padrão
        Given 
        When 
        Then 