***Settings***
Documentation       Conhecendo Listas

Library     Collections

***Variables***
@{AVENGERS}              Hulk     Thor    Ironman    Cap
@{JUSTUCE}               Superman   Wonder Woman    Batman  Arrow

***Test Cases***
Minha Lista

   # ${index}            Get Index From List         ${AVENGERS}         Ironman

   # Log To Console      ${index}

   # Set List Value      ${AVENGERS}         0   Homem de Ferro

   # ${index- Thor}      Get Index From List         ${AVENGERS}         Ironman
    
   # Remove From List    ${AVENGERS}                 ${index- Thor}        

   # Log To Console      ${AVENGERS}

    ${crossover}         Combine Lists        ${AVENGERS}    ${JUSTUCE}

    Log To Console       ${crossover}

