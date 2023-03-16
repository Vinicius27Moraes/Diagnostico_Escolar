algoritmo
var

   dis: caracter
   ch : real
   tot: inteiro
   tab: vetor[1..30,1..5] de real
   nom: vetor[1..30] de caracter
   sit: vetor[1..30] de caracter
     x: inteiro
  cont: caracter
//------------------------------
funcao recebe_dado(msg:caracter; MAX:inteiro):real
var
  valor:real
inicio
  Repita
     Escreva(msg)
     Leia(valor)
     Se (valor<0) ou (valor>MAX) entao
       Escreval("Valor inválido!")
     fimse
  Ate (valor>=0) e (valor<=MAX)
  RETORNE valor
fimfuncao
//------------------------------
funcao calcula_media(v1,v2,v3:real):real
var
  soma,menor:Real
inicio
   soma:=v1+v2+v3
   menor:=v1
   
   Se (v2<=v1) e (v2<=v3) entao
     menor:=v2
   fimse
   
   Se (v3<=v1) e (v3<=v2) entao
     menor:=v3
   fimse
   v1:=0
   retorne ((soma-menor)/2)
fimfuncao
//------------------------------
Procedimento Situacao(med:real; faltas:real; VAR situ:caracter)
inicio
   Se (med<6) ou (faltas>ch*0.25) entao
      situ:="REPROVADO"
      senao
      situ:="APROVADO"
   fimse
fimprocedimento
//------------------------------
inicio
  REPITA
    limpatela

    Escreva("Qual a disciplina? ")
    Leia(dis)
    Escreva("Qual carga horaria? ")
    Leia(ch)
    Repita
      Escreva("Quantidade de alunos da turma (max 30): ")
      Leia(tot)
    Ate (tot>=1) e (tot<=30)
    Para x de 1 ate tot faca

      Escreval("---------------------------------------------------------")
      Escreval("Aluno ",x)
      Escreval
      Escreva("Qual é o nome do aluno? ")
      leia(nom[x])
      tab[x,1]:=RECEBE_DADO("    Informe a primeira nota (0-10): ",10)
      tab[x,2]:=RECEBE_DADO("     Informe a segunda nota (0-10): ",10)
      tab[x,3]:=RECEBE_DADO("Informe a nota substitutiva (0-10): ",10)
      tab[x,5]:=RECEBE_DADO("              Quantidade de faltas: ",CH)
      tab[x,4]:=CALCULA_MEDIA(tab[x,1],tab[x,2],tab[x,3])
      SITUACAO(tab[x,4],tab[x,5],sit[x])
     Fimpara
     limpatela
     Escreval("   Disciplina: ",dis)
     Escreval("Carga Horária: ",ch)
     Escreval("---------------------------------------------------------------------------")
     Escreval("Aluno(a)                            N1      N2     Sub     Med Fal Situacao")
     Escreval("---------------------------------------------------------------------------")

     Para x de 1 ate TOT faca
         Escreval(nom[x]:30," ",tab[x,1]:7:2," ",tab[x,2]:7:2," ", tab[x,3]:7:2," ", tab[x,4]:7:2," ",tab[x,5]:3," ",sit[x])
     fimpara
     Escreval
     Escreva("Deseja informar dados de outra turma? (S/N) ")
     Leia(cont)
   Ate (cont="N")
fimalgoritmo
