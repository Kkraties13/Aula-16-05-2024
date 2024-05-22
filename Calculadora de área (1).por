programa {
  inclua biblioteca Matematica --> mt
  inclua biblioteca Util  --> u
  
  
  inteiro tipoOperacao, tipoForma = 0
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

        areaPlana (tipoForma)
      
      }
      senao se (tipoOperacao == 2)
      {

      }
    }
  }

  funcao areaPlana(inteiro tipoForma) {
    
    limpa ()

    se (tipoForma == 1)
    {
      real lado

      escreva ("Digite o lado do quadrado: ")
      leia (lado)
      
      escreva ("A área desse quadrado é: ", mt.potencia(lado, 2))
    }
    senao se (tipoForma == 2)
    {
      real base, altura

      escreva ("Digite o valor da base do retângulo: ")
      leia (base)

      escreva ("Digite o valor da altura do retângulo: ")
      leia (altura)

      limpa ()

      escreva ("O valor da área do retângulo é: ", base * altura)
    }
    senao se (tipoForma == 3)
    {
      real base, altura

      escreva ("Digite o valor da base do triângulo: ")
      leia (base)

      escreva ("Digite o valor da altura do triângulo: ")
      leia (altura)

      limpa ()

      escreva ("O valor da área do triângulo é: ", (base * altura) / 2)
    }
    senao se (tipoForma == 4)
    {
      real diagonal1, diagonal2
      escreva ("Digite o valor da primeira diagonal do losango: ")
      leia (diagonal1)

      escreva ("Digite o valor da segunda diagonal do losango: ")
      leia (diagonal2)

      limpa ()

      escreva ("O valor da área do losango é: ", (diagonal1 * diagonal2) / 2)
    }
    senao se (tipoForma == 5)
    {
      real base1, base2, altura
      escreva ("Digite o valor da primeira base do trapézio: ")
      leia (base1)

      escreva ("Digite o valor da segunda base do trapézio: ")
      leia (base2)
      
      escreva ("Digite o valor da altura do trapézio: ")
      leia (altura)

      limpa ()

      escreva ("O valor da área do trapézio é: ", ((base1 + base2) * altura) / 2)
    }
    senao se (tipoForma == 6)
    {
      real raio

      escreva ("Digite o raio do círculo: ")
      leia (raio)
      
      escreva ("A área desse círculo é: ", mt.arredondar((mt.potencia(raio, 2) * mt.PI), 2))
    }

    escreva ("Pressione ENTER para continuar")
    leia (enter)

    limpa ()
  }
}
