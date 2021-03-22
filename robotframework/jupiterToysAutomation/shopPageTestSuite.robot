*** Settings ***
Documentation    Test Cases Related to Shop Page 
Test Teardown    Test Closure 
Default Tags    shoppage-smoke
Test Setup    Set Environment Path  
Resource    Resources/CommonLib.robot
Resource    Resources/ShopPageLib.robot
Resource    Resources/HomePageLib.robot                 

*** Test Cases ***
Test_Case_04
	[Documentation]    Test Case to Add Product in Cart and validate the same in My Cart Page
	[Tags]    smoke-p1
    Open Browser To Page
    Navigate to Shop Page 
    Normal Sleep 
    Add Product
    Big Sleep for Element Load
    Navigate to My Cart
    Normal Sleep
    Validate Cart Is Not Empty
    Big Sleep for Element Load
    Validate Cart Data