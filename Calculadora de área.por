programa {
  inclua biblioteca Matematica --> mt
  inclua biblioteca Util  --> u
  
  
  inteiro tipoOperacao, tipoForma = 0
  real valorFinal
  logico fimPrograma = falso
  cadeia enter = ""

  funcao inicio() {

    enquanto (fimPrograma != verdadeiro)
    {
      escreva ("Ol�!!!\nDigite 1 para calcular �rea ou digite 2 para calcular o volume.\nDigite aqui a sua escolha: ")
      leia (tipoOperacao)

      limpa ()

      se (tipoOperacao == 1)
      {
        enquanto (tipoForma == 0 ou tipoForma < 0 ou tipoForma > 6)
        {
          escreva ("Formas: \n 1 - QUADRADO\n 2 - RET�NGULO\n 3 - TRI�NGULO\n 4 - LOSANGO\n 5 - TRAP�ZIO\n 6 - CIRCULO\nDigite a sua escolha: ")
          leia (tipoForma)

          se (tipoForma < 0 ou tipoForma > 6)
          {
            limpa ()

            escreva ("Digite um valor v�lido! Pressione ENTER para continuar")
            leia (enter)

            limpa ()
          }
        }

        area (tipoForma, valorFinal)
        
        tipoForma = 0
      }
    }
  }

  funcao area(inteiro tipoForma, real valorFinal) {
    
    limpa ()

    se (tipoForma == 1)
    {
      inteiro lado

      escreva ("Digite o lado do quadrado: ")
      leia (lado)
      
      escreva ("A �rea desse quadrado �: ", mt.potencia(lado, 2))
    }
    senao se (tipoForma == 2)
    {
      inteiro base, altura

      escreva ("Digite o valor da base do ret�ngulo: ")
      leia (base)

      escreva ("Digite o valor da altura do ret�ngulo: ")
      leia (altura)

      limpa ()

      escreva ("O valor da �rea do ret�ngulo �: ", base * altura)
    }
    senao se (tipoForma == 3)
    {
      inteiro base, altura

      escreva ("Digite o valor da base do tri�ngulo: ")
      leia (base)

      escreva ("Digite o valor da altura do tri�ngulo: ")
      leia (altura)

      limpa ()

      escreva ("O valor da �rea do tri�ngulo �: ", (base * altura) / 2)
    }

    u.aguarde(3000)

    limpa ()
  }
}
