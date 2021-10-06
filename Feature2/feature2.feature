#encoding: UTF-8
#language: en
Feature: Navegar pelo sistema de vagas
    Como um usuário do sistema de vagas
    Fulano quer navegar pelo sistema
    Para que ele possa conhecer todas as funcionalidades

    Scenario: Usuário logado deseja navegar pelo sistema
        Given que o usuário possui uma conta no sistema
        And ele está logado
        And ele quer conhecer todas as funcionalidades do sistema
        When ele aciona o botão Menu
        Then um menu com todas as opções de navegação do sistema deve-se abrir para o usuário logado

    Scenario: Usuário não logado deseja navegar pelo sistema
        Given que o usuário possui uma conta no sistema
        And ele não está logado
        And ele quer conhecer todas as funcionalidades do sistema
        When ele aciona o botão Menu
        Then uma notificação o avisa que ele não está logado, então não pode acessar a todas as funcionalidades do sistema
        Then uma nova tela aparece para o usuário pedindo que ele realize seu cadastro, iniciando o ciclo do usuário logado desejando navegar pelo sistema
