*** Variables ***
${SITE}                 https://chicorei.com/
${NAVEGADOR}            Chrome
${CONCORDAR}            id=confirmPolicyButton
${TEXT}                 Vira lata caramelo
${PESQUISAR}            id=header-search-input-desktop
${PEGAR_VIRALATA}       xpath=//div/div/div[2]/div
${SLEEP}                3 

${VERIFICAR_VALOR}     css=.text-yanone > .d-inline-flex
${PRECOCAMISA}         R$ 69,99

${SELECIONAR_TAMANHO}    css=.cr-option:nth-child(4)
${SELECIONAR_COR}        xpath=//nav/div[1]/div
${BOTAOCOMPRAR}          xpath=//button/span[2]

${VERSACOLA}             xpath=//div[2]/div/div[3]/a

${VERIFICARMENSAGEM}     css=#cart-loyalty > .mx-0  
${TEXTMENSAGEM}          VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!

${FECHARPEDIDO}          xpath=//button[2]



${SITE_1}                 https://chicorei.com/
${NAVEGADOR_1}            Chrome
${CONCORDARCOOKIES}       id=confirmPolicyButton
${TEXT_AMARELO}           Amarelo é desespero
${PESQUISAR1}             id=header-search-input-desktop
${PEGAR_AMARELO}          xpath=//div/div/div[2]/div
${SLEEP}                  3 

${VERIFICAR_VALOR1}       css=.text-yanone > .d-inline-flex
${PRECOCAMISA1}           R$ 69,99

${SELECIONARTAMANHO_P}    xpath=//div[3]/nav/div
${SELECIONAR_AZUL}        xpath=//nav/div[2]/div
${BOTAOCOMPRAR1}          xpath=//button/span[2]

${VERSACOLA1}             xpath=//div[2]/div/div[3]/a

${VERIFICARMENSAGEM1}     css=.d-flex:nth-child(4) p:nth-child(2) 
${TEXTMENSAGEM_2}         A cada 10 produtos, você acumula R$50 para usar como quiser.

${FECHARPEDIDO1}          xpath=//button[2]




${SITE2}                 https://chicorei.com/
${NAVEGADOR2}            Chrome
${CONCORDAR2}            id=confirmPolicyButton
${TEXT_ER}               Erarr
${PESQUISAR2}            id=header-search-input-desktop
${PEGAR_ERARR}           xpath=//div/div/div[2]/div
${SLEEP}                 3

${VERIFICAR_VALOR2}       css=.text-yanone > .d-inline-flex
${PRECOCAMISA2}           R$ 69,99

${SELECIONARTAMANHO2}     xpath=//div[3]/nav/div
${SELECIONAR_COR2}        xpath=//nav/div[2]/div
${BOTAOCOMPRAR2}          xpath=//button/span[2]

${VERSACOLA2}             xpath=//div[2]/div/div[3]/a

${VERIFICARMENSAGEM2}     css=.d-flex:nth-child(4) p:nth-child(2)
${TEXTMENSAGEM_3}         De segunda a sexta, das 8h às 18h.

${FECHARPEDIDO1}          xpath=//button[2]




${SITE3}                 https://chicorei.com/
${NAVEGADOR3}            Chrome
${CONCORDAR3}            id=confirmPolicyButton
${TEXT_NEMTEVI}          nem te vi
${PESQUISAR3}            id=header-search-input-desktop
${PEGAR_NEMTEVI}         xpath=//div/div/div[2]/div
${SLEEP}                 3 

${VERIFICAR_VALOR3}      css=.text-yanone > .d-inline-flex
${PRECOCAMISA3}          R$ 69,99

${SELECIONARTAMANHO3}     css=.cr-option:nth-child(4)
${SELECIONAR_COR3}        css=.cr-option:nth-child(2) > .product-color-option
${BOTAOCOMPRAR3}          xpath=//button/span[2]

${VERSACOLA3}             xpath=//div[2]/div/div[3]/a

${VERIFICARMENSAGEM3}     css=.hidden-wholesaler > .d-flex:nth-child(2) p:nth-child(2)  
${TEXTMENSAGEM_4}         Compre parcelado com cartão ou a vista com boleto ou depósito 

${FECHARPEDIDO3}          xpath=//button[2]





${SITE4}                 https://chicorei.com/
${NAVEGADOR4}            Chrome
${CONCORDAR4}            id=confirmPolicyButton
${TEXT_ALCEU}            Alceu Dispor
${PESQUISAR4}            id=header-search-input-desktop
${PEGAR_ALCEU}           xpath=//div/div/div[2]/div
${SLEEP}                 3

${VERIFICAR_VALOR4}      css=.text-yanone > .d-inline-flex
${PRECOCAMISA4}          R$ 69,99

${SELECIONARTAMANHO4}    css=.cr-option:nth-child(4)
${SELECIONAR_COR4}        css=.cr-option:nth-child(2) > .product-color-option
${BOTAOCOMPRAR4}          xpath=//button/span[2]

${VERSACOLA4}             xpath=//div[2]/div/div[3]/a

${VERIFICARMENSAGEM4}     xpath=//div[@id='footer-advantages']/div/div[2]/div/p[2] 
${TEXTMENSAGEM_5}         Sua primeira troca na Chico Rei é por nossa conta!

${FECHARPEDIDO3}          xpath=//button[2]







*** Keywords ***
Vira lata Caramelo
Acessar o site
    Open Browser    ${SITE}     ${NAVEGADOR}
    Maximize Browser Window 
  
Clicar em "Concordar" no aviso sobre Cookies
    Click Element   ${CONCORDAR} 

Pesquisar por "Vira lata caramelo" e selecionar a primeira opção da lista de resultados
    Input Text     ${PESQUISAR}    ${TEXT}  
    Sleep          ${SLEEP}
    Click Element  ${PEGAR_VIRALATA}

Validar se o valor do produto é "R$ 69,99"
    Sleep          ${SLEEP}
    Element Should Contain   ${VERIFICAR_VALOR}  ${PRECOCAMISA} 

Selecionar um tamanho, cor e clicar em comprar
    Click Element       ${SELECIONAR_TAMANHO}    
    Click Element       ${SELECIONAR_COR}
    Press Keys          NONE  ARROW_DOWN  ARROW_DOWN
    Sleep               ${SLEEP}
    Click Element       ${BOTAOCOMPRAR}
           
Clicar em "Ver sacola"
    Sleep            ${SLEEP}
    Click Element    ${VERSACOLA}

Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!" está sendo exibida
    Sleep   ${SLEEP}
    Element Should Contain     ${VERIFICARMENSAGEM}   ${TEXTMENSAGEM} 


Clicar em "Fechar pedido"
    Sleep   ${SLEEP}
    Click Element    ${FECHARPEDIDO}

Fechar browser 
    Close Browser





Amarelo é Desespero

Acessar o site 1
    Open Browser    ${SITE_1}     ${NAVEGADOR_1}
    Maximize Browser Window 

Clicar em "Concordar" no aviso sobre Cookies 1
    Click Element   ${CONCORDARCOOKIES}

Pesquisar por "Amarelo é desespero" e selecionar a primeira opção da lista de resultados
    Input Text     ${PESQUISAR1}    ${TEXT_AMARELO}  
    Sleep          ${SLEEP}
    Click Element  ${PEGAR_AMARELO}
    
Validar se o valor do produto é "R$ 69,99" denovo
    Sleep          ${SLEEP}
    Element Should Contain   ${VERIFICAR_VALOR1}  ${PRECOCAMISA1} 
 
Selecionar um tamanho, cor e clicar em comprar 1
    Click Element       ${SELECIONARTAMANHO_P}   
    Click Element       ${SELECIONAR_AZUL}
    Press Keys          NONE  ARROW_DOWN  ARROW_DOWN
    Sleep               ${SLEEP}
    Click Element       ${BOTAOCOMPRAR1}

Clicar em "Ver sacola" 1
    Sleep            ${SLEEP}
    Click Element    ${VERSACOLA1}
 
Validar se a mensagem "A cada 10 produtos, você acumula R$50 para usar como quiser." está sendo exibida
    Sleep                   ${SLEEP}
    Page Should Contain     ${VERIFICARMENSAGEM1}   ${TEXTMENSAGEM_2}  


Clicar em "Fechar pedido" 1
    Sleep   ${SLEEP}
    Click Element    ${FECHARPEDIDO1}

Fechar browser 1 
    Close Browser





Erarr é humano

Acessar o site 2
    Open Browser    ${SITE2}     ${NAVEGADOR2}
    Maximize Browser Window 

Clicar em "Concordar" no aviso sobre Cookies 2
    Click Element   ${CONCORDAR2} 

Pesquisar por "Erarr" e selecionar a primeira opção da lista de resultados
    Input Text     ${PESQUISAR2}    ${TEXT_ER} 
    Sleep          ${SLEEP}
    Click Element  ${PEGAR_ERARR}


Validar se o valor do produto é "R$ 69,99" again
    Sleep          ${SLEEP}
    Element Should Contain   ${VERIFICAR_VALOR2}  ${PRECOCAMISA2} 

Selecionar um tamanho, cor e clicar em comprar 2
    Click Element       ${SELECIONARTAMANHO2}   
    Click Element       ${SELECIONAR_COR2}
    Press Keys          NONE  ARROW_DOWN  ARROW_DOWN
    Sleep               ${SLEEP}
    Click Element       ${BOTAOCOMPRAR2}

Clicar em "Ver sacola" 2
    Sleep            ${SLEEP}
    Click Element    ${VERSACOLA2}


Validar se a mensagem "De segunda a sexta, das 8h às 18h." está sendo exibida
    Sleep   ${SLEEP}
    Page Should Contain     ${VERIFICARMENSAGEM2}   ${TEXTMENSAGEM_3}


Clicar em "Fechar pedido" 2
    Sleep   ${SLEEP}
    Click Element    ${FECHARPEDIDO2}

Fechar browser 2
    Close Browser
 



Nem Te Vi

Acessar o site 3
    Open Browser    ${SITE3}     ${NAVEGADOR3}
    Maximize Browser Window 

Clicar em "Concordar" no aviso sobre Cookies 3
    Click Element   ${CONCORDAR3} 

Pesquisar por "Nem Te Vi" e selecionar a primeira opção da lista de resultados
    Input Text      ${PESQUISAR3}    ${TEXT_NEMTEVI}  
    Sleep           ${SLEEP}
    Click Element   ${PEGAR_NEMTEVI}

Validar se o valor do produto é "R$ 69,99" again outra vez
    Sleep          ${SLEEP}
    Element Should Contain   ${VERIFICAR_VALOR3}  ${PRECOCAMISA3} 

Selecionar um tamanho, cor e clicar em comprar 3
    Click Element       ${SELECIONARTAMANHO3}   
    Click Element       ${SELECIONAR_COR3}
    Press Keys          NONE  ARROW_DOWN  ARROW_DOWN
    Sleep               ${SLEEP}
    Click Element       ${BOTAOCOMPRAR3}

Clicar em "Ver sacola" 3
    Sleep            ${SLEEP}
    Click Element    ${VERSACOLA3}

Validar se a mensagem "Compre parcelado com cartão ou a vista com boleto ou depósito" está sendo exibida
    Sleep   ${SLEEP}
    Page Should Contain     ${VERIFICARMENSAGEM3}   ${TEXTMENSAGEM_4}


Clicar em "Fechar pedido" 3
    Sleep   ${SLEEP}
    Click Element    ${FECHARPEDIDO3}

Fechar browser 3
    Close Browser




Alceu Dispor

Acessar o site 4
    Open Browser    ${SITE4}     ${NAVEGADOR4}
    Maximize Browser Window 

Clicar em "Concordar" no aviso sobre Cookies 4
    Click Element   ${CONCORDAR4} 

Pesquisar por "Alceu Dispor" e selecionar a primeira opção da lista de resultados
    Input Text     ${PESQUISAR4}    ${TEXT_ALCEU}  
    Sleep          ${SLEEP}
    Click Element  ${PEGAR_ALCEU}

Validar se o valor do produto é "R$ 69,99" vamos lá
    Sleep          ${SLEEP}
    Element Should Contain   ${VERIFICAR_VALOR4}   ${PRECOCAMISA4} 

Selecionar um tamanho, cor e clicar em comprar 4
    Sleep               ${SLEEP}
    Click Element       ${SELECIONARTAMANHO4}  
    Click Element       ${SELECIONAR_COR4}
    Press Keys          NONE  ARROW_DOWN  ARROW_DOWN
    Sleep               ${SLEEP}
    Click Element       ${BOTAOCOMPRAR4}

Clicar em "Ver sacola" 4
    Sleep            ${SLEEP}
    Click Element    ${VERSACOLA4}


Validar se a mensagem "Sua primeira troca na Chico Rei é por nossa conta!" está sendo exibida
    Sleep   ${SLEEP}
    Page Should Contain     ${VERIFICARMENSAGEM4}   ${TEXTMENSAGEM_5}


Clicar em "Fechar pedido" 4
    Sleep   ${SLEEP}
    Click Element    ${FECHARPEDIDO4}

Fechar browser 4
    Close Browser
