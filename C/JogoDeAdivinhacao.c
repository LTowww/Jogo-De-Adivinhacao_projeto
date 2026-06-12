#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <time.h>
#include <stdbool.h>

void banner(){
    system("cls");
    printf(" =======================\n");
    printf("|| Jogo De Adivinhacao ||\n");
    printf(" =======================\n");
}

void facil(){
    int valorSecreto, palpite;
    char jogarDenovo;

    banner();
    printf("\nA dificuldade escolhida foi: Facil - 1 a 10\n\n");

    valorSecreto = rand() % 10 + 1;

    while (true) {
        printf("Digite seu palpite: ");
        scanf("%d", &palpite);

        if (palpite == valorSecreto) {
            printf("\nParabens! Voce acertou! O valor secreto era %d!!!\n", valorSecreto);
            printf("Deseja jogar novamente na mesma dificuldade? (s/n): ");
            scanf(" %c", &jogarDenovo);

            if (jogarDenovo == 's') {
                facil();
                return;
            } else if (jogarDenovo == 'n') {
                banner();
                printf("\nVoltando para a tela inicial...\n");
                Sleep(3500);
                return;
            }
        } else if (palpite > valorSecreto) {
            printf("\nE menor!\n");
        } else if (palpite < valorSecreto) {
            printf("\nE maior!\n");
        }
    }
}

void medio(){
    int valorSecreto, palpite;
    char jogarDenovo;

    banner();
    printf("\nA dificuldade escolhida foi: Medio - 1 a 50\n\n");

    valorSecreto = rand() % 50 + 1;

    while (true) {
        printf("Digite seu palpite: ");
        scanf("%d", &palpite);

        if (palpite == valorSecreto) {
            printf("\nParabens! Voce acertou! O valor secreto era %d!!!\n", valorSecreto);
            printf("Deseja jogar novamente na mesma dificuldade? (s/n): ");
            scanf(" %c", &jogarDenovo);

            if (jogarDenovo == 's') {
                medio();
                return;
            } else if (jogarDenovo == 'n') {
                banner();
                printf("\nVoltando para a tela inicial...\n");
                Sleep(3500);
                return;
            }
        } else if (palpite > valorSecreto) {
            printf("\nE menor!\n");
        } else if (palpite < valorSecreto) {
            printf("\nE maior!\n");
        }
    }
}

void dificil(){
    int valorSecreto, palpite;
    char jogarDenovo;

    banner();

    printf("\nA dificuldade escolhida foi: Dificil - 1 a 100\n\n");

    valorSecreto = rand() % 50 + 1;

    while (true) {
        printf("Digite seu palpite: ");
        scanf("%d", &palpite);

        if (palpite == valorSecreto) {
            printf("\nParabens! Voce acertou! O valor secreto era %d!!!\n", valorSecreto);
            printf("Deseja jogar novamente na mesma dificuldade? (s/n): ");
            scanf(" %c", &jogarDenovo);

             if (jogarDenovo == 's') {
                dificil();
                return;
            } else if (jogarDenovo == 'n') {
                banner();
                printf("\nVoltando para a tela inicial...\n");
                Sleep(3500);
                return;
            }
        } else if (palpite > valorSecreto) {
            printf("\nE menor!\n");
        } else if (palpite < valorSecreto) {
            printf("\nE maior!\n");
        }
    }
}

int main(){
    srand(time(NULL));

    int dificuldade;

    while (true) {
        banner();
        printf("\nBem vindo(a) ao Jogo de Adivinhacao!\n");
        printf("\n   TABELA DE DIFICULDADES\n");
        printf("  ========================\n");
        printf(" || 1. Facil   - 1 a 10  ||\n");
        printf(" || 2. Medio   - 1 a 50  ||\n");
        printf(" || 3. Dificil - 1 a 100 ||\n");
        printf("  ========================\n\n");

        printf("Escolha a dificuldade: ");
        scanf("%d", &dificuldade);

        if (dificuldade == 1) {
            facil();
        } else if (dificuldade == 2) {
            medio();
        } else if (dificuldade == 3) {
            dificil();
        } else {
            printf("\nOpcao invalida! Tente novamente.\n");
            Sleep(2000);
        }
    }

    return 0;
}
