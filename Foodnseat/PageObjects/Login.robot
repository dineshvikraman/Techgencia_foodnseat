***Settings***
Library    SeleniumLibrary 



***Variables***

${SignIn}   //*[@id="navbarNavDropdown"]/ul/li[1]/a/i
${emailid}   xpath=//input[@id='exampleInputEmail1']
${password}    xpath=//input[@id='mat-input-1']


*** Keywords ***


Login as valid user
    Click Element    ${SignIn}
    Input Text    ${emailid}    dineshvikraman87@gmail.com  
    Input Password    ${password}    Dineshuser#1  
    Sleep    5       
    Click Button    Sign in
    
Login as invalid user
    Click Element    ${SignIn}
    Input Text    ${emailid}    abcd  
    Input Password    ${password}    abcd  
    Sleep    5       
    Click Button    Sign in