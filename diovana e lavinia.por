programa
{

	inclua biblioteca Texto

	cadeia nome[10], nomeRES[10], email[10], email2[10], emailRES[10], curso[10], turno[10]
	cadeia telefoneA[10], numeroMAT[10], numeroMAT2[10], telefoneRES[10]
	inteiro Idade[10], tur, a = 10, i, j 

	funcao cadeia cadastro (cadeia matricula[], inteiro n) {
		cadeia mat = matricula[n]
		se (n > 0) {
			para (i = 0; i < n; i++) { 
				se (matricula[i] == mat) { 
					escreva("O numero da matricula ja esta ocupado. Digite outro numero por gentileza: \n")
					leia(mat)
					i = -1 
				}
			}
			retorne mat
		} senao {
			retorne mat 
		}
	}

	funcao cadeia veremail (cadeia Valoremail) { 
		inteiro verificar = 0, verificar2 = 0, quantia = 0
		inteiro sinal = 0
		inteiro pontocom = 0
		cadeia Valoremail2 = Valoremail
		quantia = Texto.numero_caracteres(Valoremail2)

		faca {
			verificar = 0
			verificar2 = 0
			sinal = Texto.posicao_texto("@", Valoremail2, 0) 
			pontocom = Texto.posicao_texto(".", Valoremail2, sinal + 1) 

			se (sinal > 0) {
				verificar = 1
			}
			se (pontocom > sinal) {
				verificar2 = 1
			}

			se (verificar == 0 e verificar2 == 0) {
				escreva("\n Este email nao apresenta '@' e '.', reescreva: \n")
				leia(Valoremail2)
			} senao se (verificar == 0) {
				escreva("\n Este email nao apresenta '@', reescreva: \n")
				leia(Valoremail2)
			} senao se (verificar2 == 0) {
				escreva("\n Este email nao apresenta '.', reescreva: \n")
				leia(Valoremail2)
			}

		} enquanto (verificar != 1 ou verificar2 != 1)
		retorne Valoremail2
	}

	funcao cadeia escolherturno(inteiro turno) { 
		cadeia Nturno = "indefinido" 

		escolha (turno) {
			caso 1:
				Nturno = "Manha"
				pare
			caso 2:
				Nturno = "Tarde"
				pare
			caso 3:
				Nturno = "Noite"
				pare
			caso contrario:
				escreva("\nOpcao de turno invalida!\n") 
		}
		retorne Nturno
	}

	funcao olharidade(inteiro idade[], inteiro d, cadeia nameR[], cadeia TR[], cadeia emailR[]) {
		cadeia emailR2

		se (idade[d] < 18) {
			escreva("\n Nome do Responsavel: \n")
			leia(nameR[d])
			escreva("\n Telefone do responsavel: \n")
			leia(TR[d])
			escreva("\n Email do responsavel: \n")
			leia(emailR2)
			emailR[d] = veremail(emailR2) 
		}
	}

	funcao inicio() {

		para (i = 0; i < a; i++) {
			escreva("***SEJA BEM VINDO***\n")
			escreva("*FICHA DO ALUNO* \n")
			escreva("\n")
			escreva("Nome do aluno(a): \n")
			leia(nome[i])
			escreva("Idade do aluno(a): \n")
			leia(Idade[i])
			olharidade(Idade, i, nomeRES, telefoneRES, emailRES)
			escreva("Email do aluno(a): \n")
			leia(email[i])
			email2[i] = veremail(email[i]) 
			escreva("Numero da matricula: \n")
			leia(numeroMAT[i])
			numeroMAT2[i] = cadastro(numeroMAT, i)
			escreva("Curso do aluno(a): \n")
			leia(curso[i])
			escreva("Telefone do aluno(a): \n")
			leia(telefoneA[i])
			escreva("Turno: \n")
			escreva("1)Manha\n, 2)Tarde\n, 3)Noite\n")
			leia(tur)
			turno[i] = escolherturno(tur) 
			escreva("\n") 
		}

		para (j = 0; j < a; j++) {
			escreva("\n")
			escreva("***ficha do ", nome[j], "|***|\n")
			escreva("\nNome:", nome[j], "")
			escreva("\nIdade:", Idade[j], " anos")
			escreva("\nE-mail:", email2[j], "")
			se (Idade[j] < 18) {
				escreva("\nNome do responsavel: ", nomeRES[j], "")
				escreva("\nTelefone do responsavel:", telefoneRES[j], "")
				escreva("\nE-mail do responsavel:", emailRES[j], "")
			}
			escreva("\nNumero da matricula:", numeroMAT2[j], "")
			escreva("\nCurso escolhido:", curso[j], "")
			escreva("\nTurno: ", turno[j], "")
			escreva("\n") 
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2321; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */