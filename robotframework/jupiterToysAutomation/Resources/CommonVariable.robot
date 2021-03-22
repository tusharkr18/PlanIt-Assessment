*** Variables ***
######DO NOT EDIT THIS VARIABLE########
${url}    http://jupiter.cloud.planittesting.com    #Path
######Browser Test Daat################
${Browser}    Chrome
######PAGE LOCATOR#####################
${contactPageHypXpath}	//*[@id='nav-contact']/a
${submitXpath}   //*[@class='form-actions']/a
@{errorMessageXpath}	//*[@id='message-err']		//*[@id='email-err']	//*[@id='forename-err']
${firstNameXpath}	//*[@id='forename']
${emailXpath}	//*[@id='email']
${txtmessageXpath}	id=message
${submitmsgXpath}	//*[@class='alert alert-success']
${shopPageHypXpath}    //*[@id='nav-shop']/a
${productList}    //*[@class='products ng-scope']/ul/li
${navigateCart}		//*[@class='icon icon-shopping-cart icon-white']
${cartCountMsg}	//*[@class='cart-count ng-binding'] 
${cartTable}    //*[@class='table table-striped cart-items']/tbody/tr/td
${contactpageHeadErrMsg}    //*[@class='alert alert-error ng-scope']
########VALID/INVALID TEST DATA#######
@{cpTestData}    John    test123@test.com    This is Test Message    test
${timeout}    10s
