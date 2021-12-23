***Settings***
Documentation       Suite para testar a classe  ContaLibrry

Library         ContaLibrary.py

***Test Cases***
Quando abro nova conta deve retornar saldo ZERADO
    Abrir Conta

        ${saldo_final}  Obter saldo

    Log ${saldo_final}

