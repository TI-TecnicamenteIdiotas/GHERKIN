#encoding: UTF-8
#language: en
Feature: O Usuário Empresa deseja cadastrar alguma vaga no sistema de vagas
    Scenario: O Usuário Empresa possui todas as informações necessárias para cadastrar uma vaga nova
        Given o usuário empresa esteja logado
        And o usuário empresa tenha todos os dados aceitos e necessarios para anunciar uma nova vaga
        When o usuário empresa deseja adicionar uma nova vaga para outros usuarios acessarem
        And o usuário empresa exerce uma ação para com o sistema, na tela de funcionalidades
        Then o sistema mostrará ao usuário empresa que pode acessar a opção de anunciar uma nova vaga no menu de funcionalidades

    Scenario: O Usuário Empresa não possui todas as informações necessárias para cadastrar uma vaga nova
        Given o usuário empresa esteja logado
        And o usuário empresa não tenha todos os dados aceitos e necessarios para anunciar uma nova vaga
        When o usuário empresa deseja adicionar uma nova vaga para outros usuarios acessarem
        And o usuário empresa exerce uma ação para com o sistema, na tela de funcionalidades
        Then o sistema mostrará ao usuário empresa que alguma informação está faltando ou não foi aceita, negando seu acesso ao cadastro da vaga
        Then o sistema permitirá mais tentativas até que o usuário empresa acerte todos os dados necessarios para registrar uma vaga
