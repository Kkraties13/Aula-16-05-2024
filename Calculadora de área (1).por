programa {
  inclua biblioteca Matematica --> mt
  inclua biblioteca Util  --> u
  
  
  inteiro tipoOperacao, tipoForma = 0
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
      
      escreva ("A �rea desse quadrado �: ", mt.potencia(lado, 2))
    }
    senao se (tipoForma == 2)
    {
      real base, altura

      escreva ("Digite o valor da base do ret�ngulo: ")
      leia (base)

      escreva ("Digite o valor da altura do ret�ngulo: ")
      leia (altura)

      limpa ()

      escreva ("O valor da �rea do ret�ngulo �: ", base * altura)
    }
    senao se (tipoForma == 3)
    {
      real base, altura

      escreva ("Digite o valor da base do tri�ngulo: ")
      leia (base)

      escreva ("Digite o valor da altura do tri�ngulo: ")
      leia (altura)

      limpa ()

      escreva ("O valor da �rea do tri�ngulo �: ", (base * altura) / 2)
    }
    senao se (tipoForma == 4)
    {
      real diagonal1, diagonal2
      escreva ("Digite o valor da primeira diagonal do losango: ")
      leia (diagonal1)

      escreva ("Digite o valor da segunda diagonal do losango: ")
      leia (diagonal2)

      limpa ()

      escreva ("O valor da �rea do losango �: ", (diagonal1 * diagonal2) / 2)
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

      escreva ("O valor da �rea do trap�zio �: ", ((base1 + base2) * altura) / 2)
    }
    senao se (tipoForma == 6)
    {
      real raio

      escreva ("Digite o raio do c�rculo: ")
      leia (raio)
      
      escreva ("A �rea desse c�rculo �: ", mt.arredondar((mt.potencia(raio, 2) * mt.PI), 2))
    }

    escreva ("Pressione ENTER para continuar")
    leia (enter)

    limpa ()
  }
}
