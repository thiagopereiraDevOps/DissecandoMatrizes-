Algoritmo "dissecandoMatrizes"
// ============================================ //
// Algortimo da matriz de quarta ordem pra mostrar:
// - Os elementos da diagonal principal
// -Os elementos do triangulo superior
// - Os elementos do triangulo inferior
// A matriz completa //
// =========================================== //
Var
   m: vetor[1..4, 1..4] de inteiro
   l, c, op: inteiro

Procedimento MostraMatriz()
Inicio
    Para l <- 1 ate 4 faca
       Para c <- 1 ate 4 faca
          Escreva(m[l,c]:4)
       FimPara
       Escreval()
      FimPara
FimProcedimento

Procedimento DiagonalPrincipal()
var t: inteiro
inicio
    Para l <- 1 ate 4 faca
       Escreva(m[l,l]:4)
       Para c <- l+1 ate 4 faca
          Escreval("   ")
       FimPara
FimProcedimento

Procedimento TrianguloSuperior()
var t: inteiro
inicio
    Para l <- 1 ate 3 faca
	   Escreva("  ")
	   Para c <- l+1 ate 4 faca
	       Escreva(m[l,c]:4)
		FimPara
        Escreval()
        Para t <- 1 ate l faca
           Escreva("   ")
        FimPara
      FimPara
      Escreval()
FimProcedimento

Procedimento TrianguloInferior()
inicio
    Para l <-2 ate 4 faca
       Escreval()
       Para c <- 1 ate l-1 faca
           Escreva(m[l,c]:4)
		FimPara
     FimPara
     Escreval()
FimProcedimento

inicio
    Para l <- 1 ate 4 faca
       Para c <- 1 ate 4 faca
           Escreva("Digite valor para a posicao [",l, ",l]: ")
           Leia(m[l,c])
        FimPara
     FimPara
     LimpaTela
     Repita
         Escreval()
         Escreval("MENU DE OPCOES")
         Escreval("====================")
         Escreval("[1] Mostrar a Matriz")
         Escreval("[2] Diagonal Principal")
         Escreval("[3] Triangulo Superior")
         Escreval("[4] Triangulo Inferior")
         Escreval("[5] Sair")
         Repita
               Escreval("===== opcao :")
               Leia(op)

         Ate (op >=1) e (op <=5)
         LimpaTela
         Escolha op
               Caso 1
                  MostraMatriz()
                Caso 2
                   DiagonalPrincipal()
                Caso 3
                   TrianguloSuperior()
                Caso 4
                    TrianguloInferior()
                Caso 5
                    Escreval("ENCERRANDO...")
           FimEscolha
         Ate (op = 5)
Fimalgoritmo