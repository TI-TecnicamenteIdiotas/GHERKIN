#encoding: UTF-8
#language: en
Feature: O Usuário Empresa deseja contatar usuários para se candidatarem a vaga fornecida por ela
    Scenario: O Usuário Empresa obtém sucesso ao contatar o Usuário padrão
        Given o usuário empresa esteja logado
        And possua no mínimo 1 vaga
        When o usuário empresa acessar o seu perfil empresarial
        And o usuário empresa buscar por um usuário 
        And o usuário empresa encontrar um usuário que se encaixe nos requisitos da vaga fornecida
        And o usuário empresa clicar em contatar o usuário padrão
        Then o sistema entra em contato com o usuário padrão e o notifica sobre o contato feito pelo usuário empresa

    Scenario: O Usuário Empresa obtém uma falha ao contatar o Usuário padrão
        Given o usuário empresa esteja logado
        And não possua vagas fornecidas
        When o usuário empresa acessar o seu perfil empresarial
        And o usuário empresa buscar por um usuário
        And o usuário empresa encontrar um usuário que se encaixe nos requisitos da vaga fornecida
        And o usuário empresa clicar em contatar o usuário padrão
        Then o sistema notifica o usuário empresa e avisa que ele não tem forneceu vagas para poder contatar o usuário padrão