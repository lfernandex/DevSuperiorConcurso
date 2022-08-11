Algoritmo "Concurso"

Var
   maMedia     : caractere
   n, i, cont  : inteiro
   soma, media, maiorMedia, pctAprovado, MeAprovados, contAp, meAp : real
   nome  : vetor [0..99] de caractere
   nota1 : vetor [0..99] de real
   nota2 : vetor [0..99] de real


Inicio

   escreva("Qual a quantidadde de pessoas? ")
   leia(n)
   
   para i de 0 ate n-1 faca
      escreval("Digite os dados da ", i+1, "a pessoa:")
      escreva("Nome: ")
      leia(nome[i])
      escreva("Nota etapa 1: ")
      leia(nota1[i])
      escreva("Nota etapa 2: ")
      leia(nota2[i])
   fimpara

   soma <- 0
   escreval
   escreval("Tabela: ")
   para i de 0 ate n-1 faca
       soma <- nota1[i] + nota2[i]
       media <- soma / 2
       escreval(nome[i]," ", nota1[i]:4:2," ", nota2[i]:4:2, " Media: ", media:4:2)
   fimpara

   escreval
   escreval("Pessoas aprovadas:")
   para i de 0 ate n-1 faca
       soma <- nota1[i] + nota2[i]
       media <- soma / 2
     se media >= 70 entao
        escreval(nome[i])
     fimse
   fimpara
   
   pctAprovado <- 0
   escreval
   para i de 0 ate n-1 faca
      soma <- nota1[i] + nota2[i]
       media <- soma / 2
      se media >= 70 entao
      cont <- cont + 1
     fimse
   fimpara
   
   pctAprovado <- cont * 100 / n
   
   para i de 0 ate n-1 faca
      soma <- nota1[i] + nota2[i]
       media <- soma / 2
     se media > maiorMedia entao
        maiorMedia <- media
        maMedia <- nome[i]
     fimse
   fimpara
   
   MeAprovados <- 0
   para i de 0 ate n-1 faca
      soma <- nota1[i] + nota2[i]
       media <- soma / 2
      se media >= 70 entao
         meAp <- meAp + media
         contAp <- contAp + 1
         MeAprovados <- meAp / contAp
      fimse
   fimpara

   escreval("Porcentagem de aprovação: ", pctAprovado:3:1, "%")
   escreval("Maior media: ", maMedia)
   se media >= 70 entao
      escreval("Nota media dos aprovados: ", MeAprovados:4:2)
   senao
      escreval("Não há candidatos aprovados")
   fimse

Fimalgoritmo