*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    CommonVariable.robot       

*** Keywords ***
Set Environment Path
    Run Keyword If    "${Browser}"=="Chrome"    Append To Environment Variable  PATH   ${CURDIR}/../Driver
    ...    ELSE IF    "${Browser}"=="Safari"    Log    Starting Safari Driver
    Set Selenium Speed    1s         

Open Browser To Page
    Open Browser  ${url}  browser=${Browser}  
    Maximize Browser Window


Take Screenshot for Failure
    Capture Page Screenshot    ${TEST NAME}_FailedScreenshot
    
Normal Sleep
	Sleep    2s
	
Big Sleep for Element Load
	Sleep    10s
	
Test Closure
    Run Keyword If Test Failed    Take Screenshot for Failure  
    Close Browser
    