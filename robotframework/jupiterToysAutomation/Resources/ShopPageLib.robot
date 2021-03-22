*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem 
Resource    CommonVariable.robot
Resource    ProductTestData.robot      

*** Keywords ***
Add Product
    ${qtyIndex}    Set Variable    0
    FOR    ${product}    IN    @{PRODUCTS}		
     	Log	 ${product}
	 	Log	 ${product}@{QTYs}${qtyIndex}
	 	Run Keyword If    ${QTYs}[${qtyIndex}]==1    Click Element    //*[contains(text(),'${product}')]/../p/a
	 	...    ELSE IF    ${QTYs}[${qtyIndex}]>1    Custom Repeat Keyword    ${QTYs}[${qtyIndex}]    ${product} 
	 	${qtyIndex}		Evaluate 	${qtyIndex}+1
	END
	
Custom Repeat Keyword
    [Arguments]    ${run}    ${product}
    Repeat Keyword    ${run}    Click Element    //*[contains(text(),'${product}')]/../p/a
    
Navigate to My Cart
	Click Element		${navigateCart}
	
Validate Cart Is Not Empty
	${msg1}=	Get Text	${cartCountMsg}
	Run Keyword If	${msg1}>0	Log Successful Cart    ${msg1}
	
Log Successful Cart
    [Arguments]    ${msg}
    Log    Item Validated and ${msg} Item(s) present in Cart
    
Validate Cart Data
    ${qtyIndex}    Set Variable    0
    FOR    ${product}    IN    @{PRODUCTS}		
     	Log	 ${product}
	 	Log	 ${product}@{QTYs}${qtyIndex}  
	    ${is visible}=    Run Keyword And Return Status    Element Should Be Visible    //*[contains(text(),'${product}')]
	    ${cartQty}=  Get Element Attribute    //*[contains(text(),'${product}')]/../td[3]/input    value
	    Run Keyword If    ${is visible}==True    Log    Item ${product} is present in My Cart    
	 	Run Keyword If    ${QTYs}[${qtyIndex}]==${cartQty}    Log    Qty for ${product} in Input matches the value in Cart which is ${cartQty}   
	    ${qtyIndex}		Evaluate 	${qtyIndex}+1
	END