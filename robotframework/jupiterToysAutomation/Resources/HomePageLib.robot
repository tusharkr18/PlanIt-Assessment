*** Settings ***
Library    SeleniumLibrary
Resource    CommonVariable.robot    

*** Keywords ***
Navigate to Shop Page
	Click Element  ${shopPageHypXpath}

Navigate to Contacts Page
	Click Element  ${contactPageHypXpath}