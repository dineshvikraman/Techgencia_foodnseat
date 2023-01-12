***Settings***
Library    SeleniumLibrary 



***Variables***

${Paypal emailid/mobileno}    xpath=//*[@id="email"]
${Sekect next button after paypal emailid/mobileno}    xpath=//*[@id="btnNext"]
${Paypal password}    xpath=//*[@id="password"]
${Select login button}    xpath=//*[@id="btnLogin"]
${Confirm payment button}    xpath=//*[@id="payment-submit-btn"]



*** Keywords ***

Make Paypal payment    

   Click Element    ${Paypal emailid/mobileno}        
   Input Text    ${Paypal emailid/mobileno}    alby@nextgencia.com
   Sleep    2    
   Click Button    ${Sekect next button after paypal emailid/mobileno}   
   Sleep    5  
   Click Element    ${Paypal password}       
   Input Password    ${Paypal password}    alby@123#  
   Sleep    2     
   Click Button    ${Select login button}    
   Sleep    3    
   Click Button    ${Confirm payment button}  
   Sleep    7      