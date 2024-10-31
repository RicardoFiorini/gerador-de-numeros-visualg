algoritmo "Gerador de Números Aleatórios"
variáveis
    quantidade, i, intervaloInferior, intervaloSuperior : inteiro
    numeroAleatorio : inteiro
    numeros : vetor[1..100] de inteiro // Vetor para armazenar os números aleatórios
início
    // Solicita a quantidade de números a serem gerados
    escreva("Digite a quantidade de números aleatórios que deseja gerar (máx. 100): ")
    leia(quantidade)

    // Valida a quantidade
    se quantidade < 1 ou quantidade > 100 então
        escreva("Quantidade inválida! Deve ser entre 1 e 100.")
        pare
    fimse

    // Solicita o intervalo
    escreva("Digite o limite inferior do intervalo: ")
    leia(intervaloInferior)
    escreva("Digite o limite superior do intervalo: ")
    leia(intervaloSuperior)

    // Valida o intervalo
    se intervaloInferior >= intervaloSuperior então
        escreva("O limite inferior deve ser menor que o limite superior.")
        pare
    fimse

    // Gera números aleatórios dentro do intervalo especificado
    para i de 1 até quantidade faça
        numeroAleatorio ← intervaloInferior + random(intervaloSuperior - intervaloInferior + 1)
        numeros[i] ← numeroAleatorio
    fimpara

    // Exibe a lista de números gerados
    escreva("Números aleatórios gerados: \n")
    para i de 1 até quantidade faça
        escreva(numeros[i], " ")
    fimpara
fimenquanto
