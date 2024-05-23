programa {
  inclua biblioteca Matematica --> mt
  inclua biblioteca Util  --> u
  
  
  inteiro tipoForma = 0, tipoMedida = 0
  logico fimPrograma = falso
  cadeia enter = "", escritaMedida

  funcao inicio() {

    enquanto (fimPrograma != verdadeiro)
    {
      
        tipoForma = 0
        tipoMedida = 0
      
        enquanto (tipoForma == 0 ou tipoForma < 0 ou tipoForma > 7)
        {


          escreva ("Bem vindo ao sistema de cálculo de áreas!!!\nAs formas geométricas disponiveis estão abaixo\nFormas: \n 1 - QUADRADO\n 2 - RETÂNGULO\n 3 - TRIÂNGULO\n 4 - LOSANGO\n 5 - TRAPÉZIO\n 6 - CIRCULO\n 7 - SAIR \nDigite a sua escolha: ")
          leia (tipoForma)

          limpa ()

          se (tipoForma > 0 e tipoForma < 7)
          {
            enquanto (tipoMedida == 0 ou tipoMedida < 1 ou tipoMedida > 2)
            {
              escreva ("Escolha o tipo de medida:\n 1 - METROS QUADRADOS\n 2 - CENTÍMETROS QUADRADOS\nDigite a sua escolha: ")
              leia (tipoMedida)
              
              se (tipoMedida == 1)
              {
                escritaMedida = "m²"
              }
              senao se (tipoMedida == 2)
              {
                escritaMedida = "cm²"
              }
              senao se (tipoMedida < 2 ou tipoMedida > 1)
              {             
                limpa ()

                escreva ("Digite um valor válido! Pressione ENTER para continuar")
                leia (enter)

                limpa ()
              }
            }
          }
          
          se (tipoForma < 0 ou tipoForma > 7 )
          {

            limpa ()

            escreva ("Digite um valor válido! Pressione ENTER para continuar")
            leia (enter)

            limpa ()
          }

        }
      
        areaPlana ()

        limpa ()
      
    }

    escreva ("PROGRAMA FINALIZADO!!!")

  }

  funcao areaPlana() {
    
    limpa ()

    se (tipoForma == 1)
    {
      real lado

      escreva ("Digite o lado do quadrado: ")
      leia (lado)
      
      escreva ("A área desse quadrado é: ", mt.potencia(lado, 2), escritaMedida)
    }
    senao se (tipoForma == 2)
    {
      real base, altura

      escreva ("Digite o valor da base do retângulo: ")
      leia (base)

      escreva ("Digite o valor da altura do retângulo: ")
      leia (altura)

      limpa ()

      escreva ("O valor da área do retângulo é: ", base * altura, escritaMedida)
    }
    senao se (tipoForma == 3)
    {
      real base, altura

      escreva ("Digite o valor da base do triângulo: ")
      leia (base)

      escreva ("Digite o valor da altura do triângulo: ")
      leia (altura)

      limpa ()

      escreva ("O valor da área do triângulo é: ", (base * altura) / 2, escritaMedida)
    }
    senao se (tipoForma == 4)
    {
      real diagonal1, diagonal2
      escreva ("Digite o valor da primeira diagonal do losango: ")
      leia (diagonal1)

      escreva ("Digite o valor da segunda diagonal do losango: ")
      leia (diagonal2)

      limpa ()

      escreva ("O valor da área do losango é: ", (diagonal1 * diagonal2) / 2, escritaMedida)
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

      escreva ("O valor da área do trapézio é: ", ((base1 + base2) * altura) / 2, escritaMedida)
    }
    senao se (tipoForma == 6)
    {
      real raio

      escreva ("Digite o raio do círculo: ")
      leia (raio)
      
      escreva ("A área desse círculo é: ", mt.arredondar((mt.potencia(raio, 2) * mt.PI), 2), escritaMedida)
    }
    senao se (tipoForma == 7)
    {
      fimPrograma = verdadeiro
    }

    se (tipoForma > 7)
    {
      escreva ("\nPressione ENTER para continuar")
      leia (enter)
    }
  }
}