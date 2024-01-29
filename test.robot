*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup      Open Browser        https://automationexercise.com
Suite Teardown   Close Browser              

*** Variables ***

${email}         safijiva6123@safijiva.com
${password}       12345

*** Keywords ***

Click Sign-up Element
    Click Element     //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    
Click login button
    Click Element     //*[@id="form"]/div/div/div[1]/div/form/button

Input Email
    [Arguments]    ${email}
    Input Text    //*[@name="email"]    ${email}

Input Password
    [Arguments]    ${lastName}
    Input Text    //*[@name="password"]    ${password}


*** Test Cases ***
login with invalid 
   
   Click Sign-up Element
   
   Input Email                  ${email}
   Input Password               ${password}


   Click login Button
   Page Should Contain Element          //*[@id="form"]/div/div/div[1]/div/form/p


 
