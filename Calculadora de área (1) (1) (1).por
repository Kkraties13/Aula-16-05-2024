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


          escreva ("Bem vindo ao sistema de c�lculo de �reas!!!\nAs formas geom�tricas disponiveis est�o abaixo\nFormas: \n 1 - QUADRADO\n 2 - RET�NGULO\n 3 - TRI�NGULO\n 4 - LOSANGO\n 5 - TRAP�ZIO\n 6 - CIRCULO\n 7 - SAIR \nDigite a sua escolha: ")
          leia (tipoForma)

          limpa ()

          se (tipoForma > 0 e tipoForma < 7)
          {
            enquanto (tipoMedida == 0 ou tipoMedida < 1 ou tipoMedida > 2)
            {
              escreva ("Escolha o tipo de medida:\n 1 - METROS QUADRADOS\n 2 - CENT�METROS QUADRADOS\nDigite a sua escolha: ")
              leia (tipoMedida)
              
              se (tipoMedida == 1)
              {
                escritaMedida = "m�"
              }
              senao se (tipoMedida == 2)
              {
                escritaMedida = "cm�"
              }
              senao se (tipoMedida < 2 ou tipoMedida > 1)
              {             
                limpa ()

                escreva ("Digite um valor v�lido! Pressione ENTER para continuar")
                leia (enter)

                limpa ()
              }
            }
          }
          
          se (tipoForma < 0 ou tipoForma > 7 )
          {

            limpa ()

            escreva ("Digite um valor v�lido! Pressione ENTER para continuar")
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
      
      escreva ("A �rea desse quadrado �: ", mt.potencia(lado, 2), escritaMedida)
    }
    senao se (tipoForma == 2)
    {
      real base, altura

      escreva ("Digite o valor da base do ret�ngulo: ")
      leia (base)

      escreva ("Digite o valor da altura do ret�ngulo: ")
      leia (altura)

      limpa ()

      escreva ("O valor da �rea do ret�ngulo �: ", base * altura, escritaMedida)
    }
    senao se (tipoForma == 3)
    {
      real base, altura

      escreva ("Digite o valor da base do tri�ngulo: ")
      leia (base)

      escreva ("Digite o valor da altura do tri�ngulo: ")
      leia (altura)

      limpa ()

      escreva ("O valor da �rea do tri�ngulo �: ", (base * altura) / 2, escritaMedida)
    }
    senao se (tipoForma == 4)
    {
      real diagonal1, diagonal2
      escreva ("Digite o valor da primeira diagonal do losango: ")
      leia (diagonal1)

      escreva ("Digite o valor da segunda diagonal do losango: ")
      leia (diagonal2)

      limpa ()

      escreva ("O valor da �rea do losango �: ", (diagonal1 * diagonal2) / 2, escritaMedida)
    }
    senao se (tipoForma == 5)
    {
      real base1, base2, altura
      escreva ("Digite o valor da primeira base do trap�zio: ")
      leia (base1)

      escreva ("Digite o valor da segunda base do trap�zio: ")
      leia (base2)
      
      escreva ("Digite o valor da altura do trap�zio: ")
      leia (altura)

      limpa ()

      escreva ("O valor da �rea do trap�zio �: ", ((base1 + base2) * altura) / 2, escritaMedida)
    }
    senao se (tipoForma == 6)
    {
      real raio

      escreva ("Digite o raio do c�rculo: ")
      leia (raio)
      
      escreva ("A �rea desse c�rculo �: ", mt.arredondar((mt.potencia(raio, 2) * mt.PI), 2), escritaMedida)
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