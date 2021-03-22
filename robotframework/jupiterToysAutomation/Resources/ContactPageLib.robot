*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    CommonLib.robot       

*** Keywords ***
Input Mandatory Fields In Contact Page
	Input Text    ${firstNameXpath}    ${cpTestData}[0]
    Input Text    ${emailXpath}    ${cpTestData}[1]
    Input Text    ${txtmessageXpath}    ${cpTestData}[2] 

Input Invalid Data
    Input Text    ${firstNameXpath}    ${cpTestData}[0]
    Input Text    ${emailXpath}    ${cpTestData}[3]
    Input Text    ${txtmessageXpath}    ${cpTestData}[2]
	
Validate Post Submit Message
	Wait Until Element Is Visible    //*[contains(text(),'Thanks ${cpTestData}[0]')]    timeout=${timeout}
	Log    Test for submitting the Feedback is Successful  
	
Click CPSubmit
	Click Element  ${submitXpath}
