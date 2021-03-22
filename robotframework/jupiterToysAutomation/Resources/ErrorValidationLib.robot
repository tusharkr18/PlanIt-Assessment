*** Settings ***
Library    SeleniumLibrary
Resource    CommonLib.robot    

*** Keywords ***
Validate No Error Message
    Element Should Not Be Visible    ${errorMessageXpath}[0] 
    Element Should Not Be Visible    ${errorMessageXpath}[1]
    Element Should Not Be Visible    ${errorMessageXpath}[2]
    Element Should Not Be Visible    ${contactpageHeadErrMsg}
    
    
Validate Error(s) for Invalid Data   
    Element Should Be Visible    ${errorMessageXpath}[1]
    Element Should Be Visible    ${contactpageHeadErrMsg}
    Log    Test with Invalid Data Successful
    
Validate Error Message    
    Element Should Be Visible    ${errorMessageXpath}[0] 
    Element Should Be Visible    ${errorMessageXpath}[1]
    Element Should Be Visible    ${errorMessageXpath}[2]
    Element Should Be Visible    ${contactpageHeadErrMsg}