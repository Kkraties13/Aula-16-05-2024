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
      escreva ("Olá!!!\nDigite 1 para calcular área ou digite 2 para calcular o volume.\nDigite aqui a sua escolha: ")
      leia (tipoOperacao)

      limpa ()

      se (tipoOperacao == 1)
      {
        enquanto (tipoForma == 0 ou tipoForma < 0 ou tipoForma > 6)
        {
          escreva ("Formas: \n 1 - QUADRADO\n 2 - RETÂNGULO\n 3 - TRIÂNGULO\n 4 - LOSANGO\n 5 - TRAPÉZIO\n 6 - CIRCULO\nDigite a sua escolha: ")
          leia (tipoForma)

          se (tipoForma < 0 ou tipoForma > 6)
          {
            limpa ()

            escreva ("Digite um valor válido! Pressione ENTER para continuar")
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
      
      escreva ("A área desse quadrado é: ", mt.potencia(lado, 2))
    }
    senao se (tipoForma == 2)
    {
      inteiro base, altura

      escreva ("Digite o valor da base do retângulo: ")
      leia (base)

      escreva ("Digite o valor da altura do retângulo: ")
      leia (altura)

      limpa ()

      escreva ("O valor da área do retângulo é: ", base * altura)
    }
    senao se (tipoForma == 3)
    {
      inteiro base, altura

      escreva ("Digite o valor da base do triângulo: ")
      leia (base)

      escreva ("Digite o valor da altura do triângulo: ")
      leia (altura)

      limpa ()

      escreva ("O valor da área do triângulo é: ", (base * altura) / 2)
    }

    u.aguarde(3000)

    limpa ()
  }
}
