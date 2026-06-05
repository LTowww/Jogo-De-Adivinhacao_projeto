programa
{
	
	inclua biblioteca Util --> u
	
	funcao banner(){
		escreva("===============================\n")
		escreva("===== Jogo de Adivinhação =====\n")
		escreva("===============================\n")
	}

	funcao facil(){

		inteiro valorSecreto
		inteiro palpite
		caracter jogardenovo

		limpa()
		
		banner()
		
		escreva("Dificuldade escolhida: Fácil - 1 a 10\n")
		valorSecreto = u.sorteia(1, 10)

		enquanto (verdadeiro) {

    		escreva("Insira sua tentativa: ")
    		leia(palpite)

    		se (palpite == valorSecreto) {
        	escreva("Acertou!!! O Valor Secreto era ", valorSecreto, "!!!\n")
        	escreva("Deseja jogar novamente na mesma dificuldade? (s/n): ")
        	leia(jogardenovo)

        se(jogardenovo == 's'){
        	facil()
        }
        senao se( jogardenovo == 'n'){
        	limpa()
        	banner()
        	escreva("Voltando para a tela de início!")
        	u.aguarde(5000)
		limpa()
		inicio()
        }
        
        pare
    }
    senao se (palpite < valorSecreto) {
        escreva("É maior!\n")
    }
    senao {
        escreva("É menor!\n")
    }
}
	}

	funcao medio(){
		inteiro valorSecreto
		inteiro palpite
		caracter jogardenovo

		limpa()
		
		banner()
		
		escreva("Dificuldade escolhida: Médio - 1 a 50\n")
		valorSecreto = u.sorteia(1, 50)

		enquanto (verdadeiro) {

    escreva("Insira sua tentativa: ")
    leia(palpite)

    se (palpite == valorSecreto) {
        escreva("Acertou!!! O Valor Secreto era ", valorSecreto, "!!!\n")
        escreva("Deseja jogar novamente na mesma dificuldade? (s/n): ")
        leia(jogardenovo)

        se(jogardenovo == 's'){
        	medio()
        }
        senao se( jogardenovo == 'n'){
        	limpa()
        	banner()
        	escreva("Voltando para a tela de início!")
        	u.aguarde(5000)
		limpa()
		inicio()
        }
        
        pare
    }
    senao se (palpite < valorSecreto) {
        escreva("É maior!\n")
    }
    senao {
        escreva("É menor!\n")
    }
}
	}

	funcao dificil(){
		inteiro valorSecreto
		inteiro palpite
		caracter jogardenovo

		limpa()
		
		banner()
		
		escreva("Dificuldade escolhida: Difícil - 1 a 100\n")
		valorSecreto = u.sorteia(1, 100)

		enquanto (verdadeiro) {

    escreva("Insira sua tentativa: ")
    leia(palpite)

    se (palpite == valorSecreto) {
        escreva("Acertou!!! O Valor Secreto era ", valorSecreto, "!!!\n")
        escreva("Deseja jogar novamente na mesma dificuldade? (s/n): ")
        leia(jogardenovo)

        se(jogardenovo == 's'){
        	dificil()
        }
        senao se( jogardenovo == 'n'){
        	limpa()
        	banner()
        	escreva("Voltando para a tela de início!")
        	u.aguarde(5000)
		limpa()
		inicio()
        }
        
        pare
    }
    senao se (palpite < valorSecreto) {
        escreva("É maior!\n")
    }
    senao {
        escreva("É menor!\n")
    }
}
	}
	
	funcao inicio()
	{	
		inteiro dificuldade
	
		banner()
		escreva("Bem-Vindo(a) ao Jogo de Adivinhação!\n")
		escreva("   TABELA DE DIFICULDADES\n")
		escreva("  ========================\n")
		escreva(" || 1. Fácil - 1 a 10    ||\n")
		escreva(" || 2. Médio - 1 a 50    ||\n")
		escreva(" || 3. Difícil - 1 a 100 ||\n")
		escreva("  ========================\n")
		escreva("Insira a dificuldade desejada:")
		leia(dificuldade)

		se( dificuldade == 1){
			facil()
		}

		senao se( dificuldade == 2){
			medio()
		}

		senao se( dificuldade == 3){
			dificil()
		}

		senao {
			limpa()
			banner()
			escreva("Essa dificuldade não está disponível!\n")
			escreva("Voltando para a tela de início!")
			u.aguarde(5000)
			limpa()
			inicio()
		}
	}
}
