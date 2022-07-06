*** Settings ***
Library   SeleniumLibrary
Resource   ./schelen.resource

*** Test Cases ***

Vira lata Caramelo
    Acessar o site
    Clicar em "Concordar" no aviso sobre Cookies 
    Pesquisar por "Vira lata caramelo" e selecionar a primeira opção da lista de resultados
    Validar se o valor do produto é "R$ 69,99"
    Selecionar um tamanho, cor e clicar em comprar
    Clicar em "Ver sacola"
    Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!" está sendo exibida
    Clicar em "Fechar pedido"
    Fechar browser 

Amarelo é Desespero
    Acessar o site 1
    Clicar em "Concordar" no aviso sobre Cookies 1
    Pesquisar por "Amarelo é desespero" e selecionar a primeira opção da lista de resultados
    Validar se o valor do produto é "R$ 69,99" denovo
    Selecionar um tamanho, cor e clicar em comprar 1
    Clicar em "Ver sacola" 1
    Validar se a mensagem "A cada 10 produtos, você acumula R$50 para usar como quiser." está sendo exibida
    Clicar em "Fechar pedido" 1
    Fechar browser 1
    
Erarr é humano
    Acessar o site 2
    Clicar em "Concordar" no aviso sobre Cookies 2
    Pesquisar por "Erarr" e selecionar a primeira opção da lista de resultados
    Validar se o valor do produto é "R$ 69,99" again
    Selecionar um tamanho, cor e clicar em comprar 2
    Clicar em "Ver sacola" 2
    Validar se a mensagem "De segunda a sexta, das 8h às 18h." está sendo exibida
    Clicar em "Fechar pedido" 2
    Fechar browser 2

Nem Te Vi
    Acessar o site 3
    Clicar em "Concordar" no aviso sobre Cookies 3
    Pesquisar por "Nem Te Vi" e selecionar a primeira opção da lista de resultados
    Validar se o valor do produto é "R$ 69,99" again outra vez
    Selecionar um tamanho, cor e clicar em comprar 3
    Clicar em "Ver sacola" 3
    Validar se a mensagem "Compre parcelado com cartão ou a vista com boleto ou depósito" está sendo exibida
    Clicar em "Fechar pedido" 3
    Fechar browser 3

Alceu Dispor
    Acessar o site 4
    Clicar em "Concordar" no aviso sobre Cookies 4
    Pesquisar por "Alceu Dispor" e selecionar a primeira opção da lista de resultados
    Validar se o valor do produto é "R$ 69,99" vamos lá
    Selecionar um tamanho, cor e clicar em comprar 4
    Clicar em "Ver sacola" 4
    Validar se a mensagem "Sua primeira troca na Chico Rei é por nossa conta!" está sendo exibida
    Clicar em "Fechar pedido" 4
    Fechar browser 4