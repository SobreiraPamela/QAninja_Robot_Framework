***Settings***
Documentation           Trabalhando com Condicionais

***Test Cases***
Carteira de Motorista
    ${idade}=       Set Variable    18

    IF      ${idade} >= 18
        Log To Console      Você pode tirar sua CNH
    ELSE
        Log To Console      Você pode andar de bicicleta
    END

Navegador
    [Tags]          browser

    ${browser}=     Set Variable        IE

    IF          '${browser}' == 'Firefox'
        Log To Console      Chamando o ${browser}
    ELSE IF     '${browser}' == 'Chrome'
        Log To Console      Chamando o ${browser}
    ELSE IF     '${browser}' == 'Webkit'
        Log To Console      Chamando o ${browser}
    ELSE
        Log To Console      Navegador Incorreto.
    END