***Settings***
Library    SeleniumLibrary 
Resource    ../PageObjects/Login.robot
Resource    ../PageObjects/Paypal Payment Flow.robot
Documentation    This is regression test scenarios for five flows

***Variables***

${url}  https://eatnseat.nextgencia.com/tableReserv/
${Browser}    Chrome
${Select time}    xpath=/html/body/app-root/app-index-layout/section[1]/div[2]/div/app-banner/div/div/div[1]/form/div/div[2]/div/select
${Select person}    xpath=/html/body/app-root/app-index-layout/section[1]/div[2]/div/app-banner/div/div/div[1]/form/div/div[3]/div/select  
${Select continue button}    xpath=//*[@id="title_message"]/div/form/button
${Continue with selected seat button}    xpath=//*[@id="sticky"]/div[2]/div/button[2]
${Confirm selected table button}    xpath=//*[@id="menuitems"]/div/div/div[3]/button[2]
${Select checkbox before checkout}    xpath=//*[@id="exampleCheck1"]
${Select checkbox before pay button}    xpath=//*[@id="exampleCheck1"]




*** Test Cases ***
     

FoodnSeat login Test Positive
     
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window                 
    Sleep    5
    Login as valid user    
    Sleep    10    
    Click Link      xpath=//*[@id="navbarNavDropdown"]/ul/li[3]/a 
    Sleep    5   
    Click Link    Sign out  
    Sleep    3      
    Close Browser
    Log    Test Passed    
    

                   
FoodnSeat login Test Negative
    
                             
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window   
    Sleep    5              
    Login as invalid user
    Sleep    10
    Close Browser   
    Log    Test Passed  
    

Quantity and Add on adding and removing from the cart flow
    

    Open Browser    ${url}    ${Browser}
    Maximize Browser Window                 
    Sleep    10
    Login as valid user
    Sleep    25  

  
    Click Element    ${Select time}
    Sleep    3    
    Select From List By Value    ${Select time}    8:00 PM    
    Sleep    3        
    Click Element    ${Select person}  
    Sleep    3    
    Select From List By Value    ${Select person}    4
    Sleep    7 

#search location          
    Click Element     id=dropdownMenu2
    Sleep    5    
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[1]/div/div[5]/button[1]  
    Sleep    5     
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[2]/div/button[1]   
    Sleep    2       
    Click Element   class:searchIcon     
    Sleep    20
    
#result page        
   Click Element    xpath=/html/body/app-root/app-home-layout/app-content-area/section/div/div[2]/div[1]/div/figure[1]/div/div[2]/div[4]/div[1]/div/span[1]            
   Sleep    20    
   Click Button    ${Select continue button}
   Sleep    20
   
#table layout page   
   Click Element    xpath=//*[@id="sticky"]/div[2]/div/button[3]   
   Set Browser Implicit Wait    10
   Click Element    xpath=//*[@id="menuitems"]/div/div/div[3]/button[2] 
   Sleep    5
   
#cartpage
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[1]/div/div/div[3]/div[1]/div[2]/div/div[2]/button    
    Sleep    3
    Click Element    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/mat-card/mat-dialog-content/div/div[1]/label/input
    Click Element    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/mat-card/mat-dialog-content/div/div[2]/label/input
    Sleep    3  
    Double Click Element    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/div[3]/div/div[1]/img[2]    
    Sleep    2   
    Click Button    xpath=//*[@id="menuitems"]/div/div/div[3]/div[3]/div/button      
    Sleep    10    
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[1]/div/div/div[3]/div[1]/div[1]/div/div[2]/button     
    Sleep    3  
    Double Click Element    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/div[3]/div/div[1]/img[2]
    Sleep    3   
    Click Button    xpath=//*[@id="menuitems"]/div/div/div[3]/div[3]/div/button
    Sleep    10
#remove from cart
    Click Element    xpath://*[@id="accordion-header-0"]/div/div[7]/i     
    Sleep    5
    Click Element    xpath://*[@id="accordion-header-0"]/div/div[7]/i
    Sleep    5    
    Close Browser
    Log    Test Passed   
            



Sign up functionality from table layout page

    Open Browser    ${url}    ${Browser}
    Maximize Browser Window                 
    Sleep    10

    Click Element    ${Select time}
    Sleep    3    
    Select From List By Value    ${Select time}    9:15 PM    
    Sleep    3        
    Click Element    ${Select person}  
    Sleep    3    
    Select From List By Value    ${Select person}    4
    Sleep    7 

#search location          
    Click Element     id=dropdownMenu2
    Sleep    5    
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[1]/div/div[5]/button[1]  
    Sleep    5     
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[2]/div/button[1]   
    Sleep    2       
    Click Element   class:searchIcon     
    Sleep    20
    
#result page        
   Click Element    xpath=/html/body/app-root/app-home-layout/app-content-area/section/div/div[2]/div[1]/div/figure[1]/div/div[2]/div[4]/div[1]/div/span[1]            
   Sleep    20    
   Click Button    ${Select continue button}
   Sleep    20


#table layout page            
   Click Element    xpath=//*[@id="D1"]
   Sleep    5    
   Click Element    xpath://*[@id="mat-dialog-0"]/app-login/div/div[5]/a    
   Sleep    2 
   
#sign up form   
   Input Text    id:mat-input-2    test user
   Input Text    id:mat-input-3    test
   Input Text    id:mat-input-4    test
   Input Text    exampleInputEmail1    sample1user20@sampleuser.com
   Input Password    id:mat-input-6    9876543210    
   Input Password    id:mat-input-7    Sample1user20@sampleuser.com
   Input Password    id:mat-input-8    Sample1user20@sampleuser.com   
   Sleep    5    
   Click Button    xpath://*[@id="mat-dialog-1"]/app-signup/div/mat-dialog-content/button
   Sleep    15    
   
#table layout page
   Click Element    xpath=//*[@id="D1"]
   Sleep    5
   
#sign in    
   Click Element    id:exampleInputEmail1    
   Sleep    5    
   Input Text    id:exampleInputEmail1    sample1user20@sampleuser.com
   Sleep    5    
   Input Password    id:mat-input-10    Sample1user20@sampleuser.com
   Sleep    8   
   Click Button    xpath://*[@id="mat-dialog-2"]/app-login/div/button   
   Sleep    10 
  
   Click Element    ${Continue with selected seat button}   
   Sleep    8    
   Click Element    ${Confirm selected table button}  
   Sleep    30 
     
 
   Click Button    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-warning/div/div/div/div[3]/button[1]    
   Sleep    30 
       
   Click Element    ${Select checkbox before checkout} 
   Sleep    10    
   Click Button     xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[2]/div/div[4]/button    
   Sleep    20
   
   Click Element    ${Select checkbox before pay button}   
   Sleep    5        
   Click Button    xpath=/html/body/app-root/app-checkout/section[2]/div/div[3]/div[1]/div[4]/div[2]/div[2]/div/button   
   Sleep    5 
   Make Paypal payment
   Sleep    10    
   Page Should Contain    Thank you for your reservation
   Sleep    3    
   Close Browser         



Sign up functionality from menu item page

    Open Browser    ${url}    ${Browser}
    Maximize Browser Window                 
    Sleep    10

    Click Element    ${Select time}
    Sleep    3    
    Select From List By Value    ${Select time}    7:00 PM    
    Sleep    3        
    Click Element    ${Select person}  
    Sleep    3    
    Select From List By Value    ${Select person}    4
    Sleep    7 

#search location          
    Click Element     id=dropdownMenu2
    Sleep    5    
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[1]/div/div[5]/button[1]  
    Sleep    5     
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[2]/div/button[1]   
    Sleep    2       
    Click Element   class:searchIcon     
    Sleep    20
    
#result page        
   Click Element    xpath=/html/body/app-root/app-home-layout/app-content-area/section/div/div[2]/div[1]/div/figure[1]/div/div[2]/div[4]/div[1]/div/span[1]            
   Sleep    20    
   Click Button    ${Select continue button}
   Sleep    20
   
 

   Click Element    xpath=//*[@id="sticky"]/div[2]/div/button[3]   
   Set Browser Implicit Wait    10
   Click Element    xpath=//*[@id="menuitems"]/div/div/div[3]/button[2] 
   

#cart page
    Sleep    40    
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[1]/div/div/div[3]/div[1]/div[2]/div/div[2]/button    
    Sleep    5
    Click Element    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/mat-card/mat-dialog-content/div/div[1]/label/input
    Click Element    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/mat-card/mat-dialog-content/div/div[2]/label/input
    Sleep    7    
    Click Button    xpath=//*[@id="menuitems"]/div/div/div[3]/div[3]/div/button      
    Sleep    10    
    

#sign up pop up
    Click Element    xpath://*[@id="mat-dialog-2"]/app-login/div/div[5]/a     
    Sleep    10    
    Input Text    id:mat-input-3    test user
    Input Text    id:mat-input-4    test    
    Input Text    id:mat-input-5    test    
    Input Text    id:exampleInputEmail1    sample1user11@sampleuser.com    
    Input Password    id:mat-input-7    9876543210    
    Input Password    id:mat-input-8    Sample1user11@sampleuser.com
    Input Password    id:mat-input-9    Sample1user11@sampleuser.com 
    Sleep    5       
    Click Button    xpath://*[@id="mat-dialog-3"]/app-signup/div/mat-dialog-content/button    
    Sleep    20
    

#adding item to cart again   
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[1]/div/div/div[3]/div[1]/div[2]/div/div[2]/button    
    Sleep    5
    Click Element    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/mat-card/mat-dialog-content/div/div[1]/label/input
    Click Element    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/mat-card/mat-dialog-content/div/div[2]/label/input
    Sleep    7    
    Click Button    xpath=//*[@id="menuitems"]/div/div/div[3]/div[3]/div/button      
    Sleep    10    
    

#login pop up
    Input Text    id:exampleInputEmail1    Sample1user11@sampleuser.com    
    Sleep    3    
    Input Password    id:mat-input-11    Sample1user11@sampleuser.com    
    Sleep    3    
    Click Button    xpath://*[@id="mat-dialog-5"]/app-login/div/button
    Sleep    15    
        
    
#remove item from cart
    Click Element    xpath://*[@id="accordion-header-0"]/div/div[7]/i     
    Sleep    8
    
#sign out
    Click Element    xpath://*[@id="navbarNavDropdown"]/ul/li[3]/a/span/mat-icon    
    Sleep    3    
    Click Element    xpath://*[@id="mat-menu-panel-5"]/div/div/button[4]/a/span
    Sleep    5        
      
    Close Browser
    Log    Test Passed 
             
                       
   
   



Seat only without reservation charge flow
    

    Open Browser    ${url}    ${Browser}
    Maximize Browser Window                 
    Sleep    10
    Login as valid user
    Sleep    18 
    

    Click Element    ${Select time}
    Sleep    3    
    Select From List By Value    ${Select time}    8:00 PM    
    Sleep    3            
    Click Element    ${Select person}  
    Sleep    3    
    Select From List By Value    ${Select person}    4
         
    
    Sleep    7  
    Click Element    id=dropdownMenu2
    Sleep    5    
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[1]/div/div[4]/button[1]  
    Sleep    5     
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[2]/div/button[1]    
        
    Click Element   class:searchIcon     
   
       
   Sleep    40    
   Click Element    xpath=//*[@id="style-4"]/div/span[1]
   Sleep    12    
   Click Button    ${Select continue button}  
  


   Sleep    35          
   Click Element    xpath=//*[@id="8"]
   Sleep    13    
   Click Element    ${Continue with selected seat button}   
   Sleep    10    
   Click Element    ${Confirm selected table button}
   Sleep    30
   
   Click Button    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-warning/div/div/div/div[3]/button[1]    
   Sleep    3    

   Click Element    ${Select checkbox before checkout} 
   Sleep    10    
   Click Button     xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[2]/div/div[4]/button    
   Sleep    20        
   Page Should Contain    Thanks! Your Table Reservation is completed       
   Close Browser
   
   

Seat only with reservation charge flow  
    
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window                 
    Sleep    10
    Login as valid user
    

    Sleep    15    
    Click Element    ${Select time}
    Sleep    2    
    Select From List By Value    ${Select time}    3:30 PM    
    Sleep    2        
    Click Element    ${Select person}  
    Sleep    2    
    Select From List By Value    ${Select person}    4
  
    
    # Click Element    xpath=/html/body/app-root/app-index-layout/section[1]/div[2]/div/app-banner/div/div/div[1]/form/div/div[5]/div/select       
         
    
    Sleep    5  
    Click Element    id=dropdownMenu2
    Sleep    3    
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[1]/div/div[5]/button[1]  
    Sleep    3     
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[2]/div/button[1]   
     Sleep    2       
    Click Element   class:searchIcon     
   
            
   Sleep    20  
   Click Element    xpath=/html/body/app-root/app-home-layout/app-content-area/section/div/div[2]/div[1]/div/figure[1]/div/div[2]/div[4]/div[1]/div/span[1]           
   Sleep    20    
   Click Button    ${Select continue button}
   


   Sleep    20          
   Click Element    xpath=//*[@id="D1"]
   Sleep    5    
   Click Element    ${Continue with selected seat button}   
   Set Browser Implicit Wait    10
   Click Element    ${Confirm selected table button}  
   Sleep    15    


   Click Button    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-warning/div/div/div/div[3]/button[1]    
   Sleep    3 
   


     
   Sleep    30    
   Click Element    ${Select checkbox before checkout} 
   Sleep    10    
   Click Button     xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[2]/div/div[4]/button    
   Sleep    20
   
   Click Element    ${Select checkbox before pay button}   
   Sleep    5        
   Click Button    xpath=/html/body/app-root/app-checkout/section[2]/div/div[3]/div[1]/div[4]/div[2]/div[2]/div/button   
   Sleep    5 
   Make Paypal payment
   Sleep    10    
   Page Should Contain    Thank you for your reservation
   Sleep    2    
   Close Browser         
  
   
  
         
   
Menu only booking flow    
    

    Open Browser    ${url}    ${Browser}
    Maximize Browser Window                 
    Sleep    10
    Login as valid user
    

    Sleep    18    
    Click Element    ${Select time}
    Sleep    3    
    Select From List By Value    ${Select time}    4:30 PM  
    Sleep    3        
    Click Element    ${Select person}  
    Sleep    3    
    Select From List By Value    ${Select person}    4

    
    # Click Element    xpath=/html/body/app-root/app-index-layout/section[1]/div[2]/div/app-banner/div/div/div[1]/form/div/div[5]/div/select       
         
    
    Sleep    7  
    Click Element    id=dropdownMenu2
    Sleep    5    
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[1]/div/div[5]/button[1]  
    Sleep    5     
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[2]/div/button[1]   
     Sleep    2       
    Click Element   class:searchIcon     
   
            
   Sleep    40  
   Click Element    xpath=/html/body/app-root/app-home-layout/app-content-area/section/div/div[2]/div[1]/div/figure[1]/div/div[2]/div[4]/div[1]/div/span[1]            
   Sleep    40    
   Click Button    ${Select continue button}
   
   Sleep    30    
   Click Element    xpath=//*[@id="sticky"]/div[2]/div/button[3]   
   Set Browser Implicit Wait    10
   Click Element    xpath=//*[@id="menuitems"]/div/div/div[3]/button[2] 
   

#cart page
    Sleep    40    
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[1]/div/div/div[3]/div[1]/div[2]/div/div[2]/button    
    Sleep    5
    Click Element    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/mat-card/mat-dialog-content/div/div[1]/label/input
    Click Element    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/mat-card/mat-dialog-content/div/div[2]/label/input
    Sleep    7    
    Click Button    xpath=//*[@id="menuitems"]/div/div/div[3]/div[3]/div/button      
    Sleep    12    
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[1]/div/div/div[3]/div[1]/div[1]/div/div[2]/button    
    Sleep    7    
    Click Button    xpath=//*[@id="menuitems"]/div/div/div[3]/div[3]/div/button      
      

     
   Sleep    15    
   Click Element    ${Select checkbox before checkout} 
   Sleep    10    
   Click Button     xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[2]/div/div[5]/button    
   Sleep    30
   
   Click Element    ${Select checkbox before pay button}   
   Sleep    5        
   Click Button    xpath=/html/body/app-root/app-checkout/section[2]/div/div[2]/div[1]/div[4]/div[2]/div[2]/div/button
   Sleep    5 
   
   Make Paypal payment
   Sleep    7    
   Page Should Contain    Thank you for your reservation     
   Sleep    2     
   Close Browser
   
      
   
      
   
 Menu and seat booking with reservation charge flow 
    

    Open Browser    ${url}    ${Browser}
    Maximize Browser Window                 
    Sleep    10
    Login as valid user
    

    Sleep    18    
    Click Element    ${Select time}
    Sleep    3    
    Select From List By Value    ${Select time}    8:00 PM    
    Sleep    3        
    Click Element    ${Select person}  
    Sleep    3    
    Select From List By Value    ${Select person}    4

    # Click Element    xpath=/html/body/app-root/app-index-layout/section[1]/div[2]/div/app-banner/div/div/div[1]/form/div/div[5]/div/select       
         
    
    Sleep    7  
    Click Element     id=dropdownMenu2
    Sleep    5    
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[1]/div/div[5]/button[1]  
    Sleep    5     
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[2]/div/button[1]   
     Sleep    2       
    Click Element   class:searchIcon     
   
            
   Sleep    20  
   Click Element    xpath=/html/body/app-root/app-home-layout/app-content-area/section/div/div[2]/div[1]/div/figure[1]/div/div[2]/div[4]/div[1]/div/span[1]            
   Sleep    20    
   Click Button    ${Select continue button}
   



    Sleep    20    
    Click Element    xpath=//*[@id="D2"]/p    
    Sleep    8    
    Click Button    ${Continue with selected seat button}    
    Sleep    8    
    Click Button    ${Confirm selected table button}    
    Sleep    10    


    Click Button    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-warning/div/div/div/div[3]/button[2]    
    Sleep    3 
    


    Sleep    20    
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[1]/div/div/div[3]/div[1]/div[2]/div/div[2]/button    
    Sleep    3
    Click Element    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/mat-card/mat-dialog-content/div/div[1]/label/input
    Click Element    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/mat-card/mat-dialog-content/div/div[2]/label/input
    Sleep    2    
    Click Button    xpath=//*[@id="menuitems"]/div/div/div[3]/div[3]/div/button      
    Sleep    10    
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[1]/div/div/div[3]/div[1]/div[1]/div/div[2]/button     
    Sleep    3    
    Click Button    xpath=//*[@id="menuitems"]/div/div/div[3]/div[3]/div/button      
            


     
   Sleep    15    
   Click Element    ${Select checkbox before checkout} 
   Sleep    10    
   Click Button     xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[2]/div/div[5]/button   
   Sleep    30
   
   Click Element    ${Select checkbox before pay button}  
   Sleep    5        
   Click Button    xpath=/html/body/app-root/app-checkout/section[2]/div/div[3]/div[1]/div[4]/div[2]/div[2]/div/button   
   Sleep    10 
   
   Make Paypal payment
   Sleep    20    
   Page Should Contain    Thank you for your reservation
   Sleep    2            
   Close Browser
 
         
      
   
      
 Menu and seat booking without reservation charge flow  
    

    Open Browser    ${url}    ${Browser}
    Maximize Browser Window                 
    Sleep    10
    Login as valid user
    Sleep    18 
    

    Click Element    ${Select time}
    Sleep    3    
    Select From List By Value    ${Select time}    5:30 PM     
    Sleep    3            
    Click Element    ${Select person}  
    Sleep    3    
    Select From List By Value    ${Select person}    4
    
    
    
    Sleep    7  
    Click Element     id=dropdownMenu2
    Sleep    5    
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[1]/div/div[4]/button[1]  
    Sleep    5     
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[2]/div/button[1]    
    Sleep    2        
    Click Element   class:searchIcon     
   
            
   Sleep    30    
   Click Element    xpath=//*[@id="style-4"]/div/span[1]
   Sleep    10    
   Click Button    ${Select continue button}  
   

   
   Sleep    20          
   Click Element    xpath=//*[@id="6"]
   Sleep    10    
   Click Button    ${Continue with selected seat button}    
   Sleep    5    
   Click Button    ${Confirm selected table button}    
   Sleep    10    

    Click Button    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-warning/div/div/div/div[3]/button[2]    
    Sleep    3 



    Sleep    30    
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[1]/div/div/div[3]/div[1]/div[1]/div/div[2]/button 
    Sleep    10    
    Click Button    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/div[3]/div/button     
    

    Sleep    10    
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[1]/div/div/div[3]/div[1]/div[2]/div/div[2]/button 
    Sleep    10    
    Click Button    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/div[3]/div/button        
    


    Sleep    15    
    Click Element    ${Select checkbox before checkout}
    Sleep    8    
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[2]/div/div[5]/button    
    

    Sleep    15    
    Click Element    ${Select checkbox before pay button}    
    Sleep    8    
    Click Button    xpath=/html/body/app-root/app-checkout/section[2]/div/div[3]/div[1]/div[4]/div[2]/div[2]/div/button    
    Sleep    8 
   
   Make Paypal payment
   Sleep    10    
   Page Should Contain    Thank you for your reservation
   Sleep    2   
   Close Browser



Split payment flow part1
    
 
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window                 
    Sleep    10
    Login as valid user
    

    Sleep    18    
    Click Element    ${Select time}
    Sleep    3    
    Select From List By Value    ${Select time}    7:30 PM    
    Sleep    3        
    Click Element    ${Select person}  
    Sleep    3    
    Select From List By Value    ${Select person}    4    
         
    
    Sleep    7  
    Click Element     id=dropdownMenu2
    Sleep    5    
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[1]/div/div[5]/button[1]  
    Sleep    5     
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[2]/div/button[1]   
     Sleep    2       
    Click Element   class:searchIcon     
   
            
   Sleep    20  
   Click Element    xpath=/html/body/app-root/app-home-layout/app-content-area/section/div/div[2]/div[1]/div/figure[1]/div/div[2]/div[4]/div[1]/div/span[1]            
   Sleep    20    
   Click Button    ${Select continue button}
   



    Sleep    20    
    Click Element    xpath=//*[@id="D2"]/p    
    Sleep    8    
    Click Button    ${Continue with selected seat button}    
    Sleep    8    
    Click Button    ${Confirm selected table button}    
    Sleep    10    


    Click Button    xpath:/html/body/div[1]/div[2]/div/mat-dialog-container/app-warning/div/div/div/div[3]/button[2]    
    Sleep    3 
    


    Sleep    20    
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[1]/div/div/div[3]/div[1]/div[2]/div/div[2]/button    
    Sleep    3
    Click Element    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/mat-card/mat-dialog-content/div/div[1]/label/input
    Click Element    xpath=/html/body/div[1]/div[2]/div/mat-dialog-container/app-add-cart-popup/div/div/div/div[3]/mat-card/mat-dialog-content/div/div[2]/label/input
    Sleep    2    
    Click Button    xpath=//*[@id="menuitems"]/div/div/div[3]/div[3]/div/button      
    Sleep    10    
    Click Button    xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[1]/div/div/div[3]/div[1]/div[1]/div/div[2]/button     
    Sleep    3    
    Click Button    xpath=//*[@id="menuitems"]/div/div/div[3]/div[3]/div/button      
            


     
   Sleep    15    
   Click Element    ${Select checkbox before checkout} 
   Sleep    10    
   Click Button     xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[2]/div/div[5]/button   
   Sleep    30
   


   Click Element    xpath:/html/body/app-root/app-checkout/section[2]/div/div[3]/div[1]/div[4]/div[2]/label[1]    
   Sleep    3    
   Click Element    xpath://*[@id="mat-dialog-5"]/app-splitpay/mat-dialog-content/div/div/div[2]/form/div[2]/div    
   Sleep    3    
   Input Text    xpath://*[@id="mat-dialog-5"]/app-splitpay/mat-dialog-content/div/div/div[2]/form/div[1]/div/div/div[3]/div/input    samjoetest2@gmail.com
   Sleep    3    
   Click Button    xpath://*[@id="mat-dialog-5"]/app-splitpay/mat-dialog-content/div/div/div[2]/form/button   
   Sleep    5    

   
   Click Element    xpath:/html/body/app-root/app-checkout/section[2]/div/div[3]/div[1]/div[4]/div[3]/div[1]/label
   Sleep    3      
   Click Button    xpath:/html/body/app-root/app-checkout/section[2]/div/div[3]/div[1]/div[4]/div[3]/div[2]/button  
   Sleep    10 
   
   Make Paypal payment
   Sleep    20    
   Page Should Contain    Thank you for your reservation
   Sleep    2            
   Close Browser
 

Split payment flow part2
    
    Open Browser    https://eatnseat.nextgencia.com/tableReserv/splitpay?key=bdc574a3-962d-4434-8419-d067db7eea3a&Orderid=14840&IsSplitPay=True    Chrome
    Maximize Browser Window
    Sleep    5    
    Input Text    id:exampleInputEmail1    samjoetest2@gmail.com
    Sleep    2    
    Input Password    id:mat-input-1    Samjoetest121@gmail.com
    Sleep    2    
    Click Button    xpath://*[@id="mat-dialog-0"]/app-login/div/button    
    Sleep    20    
    


    Click Button    xpath:/html/body/app-root/app-checkout/section[2]/div/div[3]/div[1]/div[4]/div[2]/div[2]/button    
    Sleep    15    
    Make Paypal payment
    Sleep    15    
    Page Should Contain    Thank you for your reservation
    Sleep    5            
    Close Browser        




Seat selection validation for incorrect people count
    

    Open Browser    ${url}    ${Browser}
    Maximize Browser Window                 
    Sleep    10
    Login as valid user
    Sleep    18 
    

    Click Element    ${Select time}
    Sleep    3    
    Select From List By Value    ${Select time}    8:00 PM    
    Sleep    3            
    Click Element    ${Select person}  
    Sleep    3    
    Select From List By Value    ${Select person}    4
         
    
    Sleep    7  
    Click Element    id=dropdownMenu2
    Sleep    5    
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[1]/div/div[4]/button[1]  
    Sleep    5     
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[2]/div/button[1]    
        
    Click Element   class:searchIcon     
   
       
   Sleep    30    
   Click Element    xpath=//*[@id="style-4"]/div/span[1]
   Sleep    15    
   Click Button    ${Select continue button}  
  


   Sleep    30          
   Click Element    xpath=//*[@id="tbx1"]
   Sleep    13      
   Alert Should Be Present    Chair count not correct 
   Sleep    3    
   Close Browser
   


Cart validation if its empty
    
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window                 
    Sleep    10
    Login as valid user
    

    Sleep    18    
    Click Element    ${Select time}
    Sleep    3    
    Select From List By Value    ${Select time}    10:30 PM  
    Sleep    3        
    Click Element    ${Select person}  
    Sleep    3    
    Select From List By Value    ${Select person}    4

          
         
    
    Sleep    7  
    Click Element    id=dropdownMenu2
    Sleep    5    
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[1]/div/div[5]/button[1]  
    Sleep    5     
    Click Element    xpath=//*[@id="mat-menu-panel-0"]/div/div[2]/div/button[1]   
     Sleep    2       
    Click Element   class:searchIcon     
   
            
   Sleep    40  
   Click Element    xpath=/html/body/app-root/app-home-layout/app-content-area/section/div/div[2]/div[1]/div/figure[1]/div/div[2]/div[4]/div[1]/div/span[1]            
   Sleep    40    
   Click Button    ${Select continue button}
   
   Sleep    30    
   Click Element    xpath=//*[@id="sticky"]/div[2]/div/button[3]   
   Set Browser Implicit Wait    10
   Click Element    xpath=//*[@id="menuitems"]/div/div/div[3]/button[2] 
   

#cart page
        
   Sleep    15    
   Click Element    ${Select checkbox before checkout} 
   Sleep    10    
   Click Button     xpath=/html/body/app-root/app-menu-layout/app-menu-display/section/div/div[2]/div[2]/div/div[4]/button 
   Sleep    2       
   Element Text Should Be    id:toast-container   Your cart is empty   
   Sleep    3    
   Close Browser
   
     
   
   
   
   
        
 


    
        
       
      
       
            
        
    




