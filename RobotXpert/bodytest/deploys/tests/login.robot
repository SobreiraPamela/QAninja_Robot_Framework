***Settings***
Documentation       Suite de testes de Login do Administrador

Library     Browser

***Test Cases***
Login do Administrador
    New Browser     chromium    False
    New Page        http://bodytest-web-pamelasobreira.herokuapp.com/

    Fill Text       css=input[name=email]               admin@bodytest.com

    Fill Text       css=input[name=password]            pwd123
    Click           text=Entrar
    
    Get Text        css=aside strong      should be       Administrador

    Take Screenshot

Senha incorreta
    [tags]          temp
    New Browser     chromium    False
    New Page        http://bodytest-web-pamelasobreira.herokuapp.com/

    Fill Text       css=input[name=email]               admin@bodytest.com
    Fill Text       css=input[name=password]            abc123
    Click           text=Entrar

    #Wait For Elements State     css=.Toastify__toast-body           visible     5  
    #Get Text                    css=.Toastify__toast-body           should be   Usuário ou senha inválido

    Wait For Elements State      css=.Toastify__toast-body >> test=Usuário ou senha inválido

Email Incorreto
     [tags]          temp
    New Browser     chromium    False
    New Page        http://bodytest-web-pamelasobreira.herokuapp.com/

    Fill Text       css=input[name=email]               admin&bodytest.com
    Fill Text       css=input[name=password]            abc123
    Click           text=Entrar

     Wait For Elements State      css=form span >> test=Informe um email válido         visible     5

Senha não informada
 [tags]          temp
    New Browser     chromium    False
    New Page        http://bodytest-web-pamelasobreira.herokuapp.com/

    Fill Text       css=input[name=email]               admin@bodytest.com
    Fill Text       css=input[name=password]            ${EMPTY}
    Click           text=Entrar

     Wait For Elements State      css=form span >> test=A senha é obrigatória         visible     5

Email não informado

 [tags]          temp
    New Browser     chromium    False
    New Page        http://bodytest-web-pamelasobreira.herokuapp.com/

    Fill Text       css=input[name=email]               ${EMPTY}
    Fill Text       css=input[name=password]            abc123
    Click           text=Entrar

     Wait For Elements State      css=form span >> test=O email é obrigatório         visible     5     

Email e Senha não informados

 [tags]          temp
    New Browser     chromium    False
    New Page        http://bodytest-web-pamelasobreira.herokuapp.com/

    Fill Text       css=input[name=email]               ${EMPTY}
    Fill Text       css=input[name=password]            ${EMPTY}
    Click           text=Entrar

     Wait For Elements State      css=form span >> test=O email é obrigatório         visible     5
     Wait For Elements State      css=form span >> test=A senha é obrigatória         visible     5
       