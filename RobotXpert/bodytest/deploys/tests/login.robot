***Settings***
Documentation       Suite de testes de Login do Administrador

Library     Browser

Resource    ../resources/base.robot

***Test Cases***
Login do Administrador
    [Tags]          admin   
    New Browser     chromium    False
    New Page        http://bodytest-web-pamelasobreira.herokuapp.com/

    Login With      admin@bodytest.com pwd123
    
    Get Text        css=aside strong      should be       Administrador

    Take Screenshot

Senha incorreta
    [tags]          temp
    New Browser     chromium    False
    New Page        http://bodytest-web-pamelasobreira.herokuapp.com/

    Login With      admin@bodytest.com abc123

    Wait For Elements State      css=.Toastify__toast-body >> test=Usuário ou senha inválido

Email Incorreto
     [tags]          temp
    New Browser     chromium    False
    New Page        http://bodytest-web-pamelasobreira.herokuapp.com/

    Login With      admin&bodytest.com abc123

     Wait For Elements State      css=form span >> test=Informe um email válido         visible     5

Senha não informada
    [tags]          temp
    New Browser     chromium    False
    New Page        http://bodytest-web-pamelasobreira.herokuapp.com/

    Login With      admin&bodytest.com ${EMPTY}

     Wait For Elements State      css=form span >> test=A senha é obrigatória         visible     5

Email não informado

    [tags]          temp
    New Browser     chromium    False
    New Page        http://bodytest-web-pamelasobreira.herokuapp.com/

    Login With      ${EMPTY} abc123

    Fill Text       css=input[name=email]               ${EMPTY}
    Fill Text       css=input[placeholder*=senha]            abc123
    Click           text=Entrar

     Wait For Elements State      css=form span >> test=O email é obrigatório         visible     5     

Email e Senha não informados

 [tags]          temp
    New Browser     chromium    False
    New Page        http://bodytest-web-pamelasobreira.herokuapp.com/

    Login With      ${EMPTY} ${EMPTY}

     Wait For Elements State      css=form span >> test=O email é obrigatório         visible     5
     Wait For Elements State      css=form span >> test=A senha é obrigatória         visible     5
       