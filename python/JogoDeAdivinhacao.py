import os
import random
import time

def banner():

    os.system('cls')

    print("=======================")
    print("= Jogo De Adivinhação =")
    print("=======================")

def facil():

    banner()

    print("\nA dificuldade escolhida foi: Fácil - 1 a 10")

    valorSecreto = random.randint(1, 10)

    while True:
        palpite = int(input("Digite seu palpite: "))
        if palpite == valorSecreto:
            print ("Parabéns! Você acertou! O valor secreto era "+str(valorSecreto)+"!!!")
            jogarDenovo = str(input("Deseja jogar novamente na mesma dificuldade (s/n)? "))
            if jogarDenovo == 's':
                facil()
            elif jogarDenovo == "n":
                banner()
                print("\nVoltando para a tela inicial!")
                time.sleep(3.5)
                inicio()
            break
        elif palpite > valorSecreto:
            print("É menor\n")
        elif palpite < valorSecreto:
            print("É maior\n")

def medio():

    banner()

    print("\nA dificuldade escolhida foi: Médio - 1 a 50\n")

    valorSecreto = random.randint(1, 50)

    while True:
        palpite = int(input("Digite seu palpite: "))
        if palpite == valorSecreto:
            print("Parabéns! Você acertou! O valor secreto era "+str(valorSecreto)+"!!!")
            jogarDenovo = str(input("Deseja jogar novamente na mesma dificuldade (s/n)? "))
            if jogarDenovo == "s":
                medio()
            elif jogarDenovo == "n":
                banner()
                print("\nVoltando para a tela inicial!")
                time.sleep(3.5)
                inicio()
                break
        elif palpite > valorSecreto:
            print("É menor\n")
        elif palpite < valorSecreto:
            print("É maior\n")

def dificil():

    banner()

    print("\nA difiuldade escolhida foi: Difícil - 1 a 100\n")

    valorSecreto = random.randint(1, 100)

    while True:
        palpite = int(input("Digite seu palpite: "))
        if palpite == valorSecreto:
            print("Parabéns! Você acertou! O valor secreto era "+str(valorSecreto)+"!!!")
            jogarDenovo = str(input("Deseja jogar novamente na mesma dificuldade (s/n)? "))
            if jogarDenovo == "s":
                dificil()
            elif jogarDenovo == "n":
                banner()
                print("\nVoltando para a tela inicial!")
                time.sleep(3.5)
                inicio()
                break
        elif palpite > valorSecreto:
            print("É menor\n")
        elif palpite < valorSecreto:
            print("É maior\n")

def inicio():

    banner()

    print("Bem vindo(a) ao Jogo de Adivinhação!\n")
    print("   TABELA DE DIFICULDADES")
    print("  ========================")
    print(" || 1. Fácil - 1 a 10    ||")
    print(" || 2. Médio - 1 a 50    ||")
    print(" || 3. Difícil - 1 a 100 ||")
    print("  ========================")

    dificuldade = str(input("Escolha a dificuldade do jogo: "))

    if dificuldade == "1":
        facil()
    elif dificuldade == "2":
        medio()
    elif dificuldade == "3":
        dificil()
    else:
        banner()
        print("\nEssa dificuldade não está disponível!\n")
        print("Voltando para a tela de início!!!")
        time.sleep(3.5)
        inicio()
        
inicio()
