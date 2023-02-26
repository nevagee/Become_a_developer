*** Settings ***
Library  Browser
Resource    ../domaci_procvicovani.robot

*** Variables ***

${URL}      https://www.saucedemo.com/
*** Test Cases ***
Login - correct with control in key word                  
    Login_with_control      standard_user             secret_sauce          ADD TO CART
    Add to cart    $Goods    $Value    $Quantity
    Logout


Login - incorrect with control in key word
    Login_with_control      hej_tady_user             secret_sauce         Login
*** Keywords ***

# Cílem úkolu je doplnit toto klíčové slovo tak aby všechny testy prošly
Login_with_control
    [Arguments]     ${user}      ${psw}     ${outcome}

   # log             ${user}
    #log             ${psw}
    #log             ${outcome}



    New Browser    chromium    headless=false

    New Page       ${URL}

    Get Title      contains     Swag



    click           id=user-name
    Sleep           2
    Type text       id=user-name    ${user}

    Click           xpath=//*[@id="password"]
    Sleep           2
    Type Text       xpath=//*[@id="password"]  ${psw}

    Click           xpath=//*[@id="login-button"]
    Sleep           2

User_is_logged_in
    Get Text    id=add-to-cart-sauce-labs-onesie  ==  ${outcome}

User_is_not_logged_in    
     Get Text    data-test=login-button       ==       Login

Logout
 
    Click           id=react-burger-menu-btn
#    Get Text        id=logout_sidebar_link     ==     LOGOUT

    Sleep           5

    Click           id=logout_sidebar_link

    Sleep           5

#    Get Text        id=login-button             ==      Login

#    Sleep           2
Add to cart
    [Arguments]      ${Goods}     ${Value}    ${Quantity}
    Click    data-test=add-to-cart-sauce-labs-bolt-t-shirt 
    Sleep    1
    Click    data-test=add-to-cart-sauce-labs-bike-light
    Sleep    1
    Click    id=shopping_cart_container
    Sleep    2
    Click    data-test=remove-sauce-labs-bolt-t-shirt
    Sleep    2
    Click   data-test=continue-shopping
