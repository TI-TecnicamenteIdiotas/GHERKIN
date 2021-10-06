#encoding: UTF-8
#language: en
Feature: Candidatar a vaga
Como um usuário do sistema
Um usuáio quer candidatar a uma vaga
Para que ele possa arrumar um emprego

Background:
Given O usuário está cadastrado no sistema

	Scenario: Candidatura com sucesso
		And está logado
		And ele acessar a página com todas as vagas cadastradas
		And escolher uma vaga
		When ele clicar para candidatar a vaga
		Then ele recebe uma mensagem dizendo que “A candidatura foi feita com sucesso”

Scenario: Vaga não aceita mais inscrições
		And está logado
		And ele acessar a página com todas as vagas cadastradas
		And escolher uma vaga
		When ele clicar para candidatar a vaga
		Then ele recebe uma mensagem dizendo que “A vaga não está mais aceitando candidaturas”
