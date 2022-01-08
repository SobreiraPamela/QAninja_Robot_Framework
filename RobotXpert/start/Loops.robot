***Settings***
Documentation       Laços de Repetição  (Loops)

***Variables***
@{AVENGERS}              Hulk     Thor    Ironman    Cap    Spiderman
@{JUSTUCE}               Superman   Wonder Woman    Batman  Arrow

***Test Cases***
Meu Primeiro Loop

    FOR      ${item}        IN      @{AVENGERS}
        IF      $item == 'Spiderman'
            Log To Console   Obtendo o Vingador: ${item}
        END    
    END

Outro Loop
    [Tags]      Thor

    FOR      ${item}        IN      @{AVENGERS}
        Exit For Loop If    $item == 'Thor'
        Log To Console       Obtendo o Vingador: ${item}    
    END
