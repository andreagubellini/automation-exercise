***Keywords***
I go to login page
    I go to  ${url}
    I land on  ${url}
    I click  ${login}
    I land on  ${authenticationUrl}

I input ${email} as email address
    Wait    Input Text  ${emailCreate}   ${email}

I click Create account button
    Wait    Click Element  ${submitCreate}

I insert valid data in all required input forms
    Click Element  ${radioGenderMale}  modifier=False
    Input Text  ${firstNameInput}  ${firstUser.name}
    Input Text  ${lastNameInput}  ${firstUser.lastName}
    Input Text  ${emailInput}   ${emailAddress}
    Input Text  ${passwordInput}  ${firstUser.password}
    Select From List By Value  ${dayObSelect}  ${firstUser.dayBirth}
    Select from list By Value  ${monthObSelect}  ${firstUser.monthBirth}
    Select From List By Value  ${yearObSelect}  ${firstUser.yearBirth}
    Click Element  ${newsletterCheckbox}  modifier=False
    Input Text  ${addressName}  ${firstUser.name}
    Input Text  ${addressLastName}  ${firstUser.lastName}
    Input Text  ${companyInput}  ${firstUser.company}
    Input Text  ${address1Input}  ${firstUser.address1}
    Input Text  ${cityInput}  ${firstUser.city}
    Select From List By Value  ${stateSelect}  ${firstUser.state}
    Input Text  ${postcodeInput}  ${firstUser.postcode}
    Select From List By Value  ${countrySelect}  ${firstUser.country}
    Input Text  ${additionalInput}  ${firstUser.additionalInfo}
    Input Text  ${mobilePhoneInput}  ${firstUser.mobilePhone}
    Input Text  ${addressAliasInput}  ${firstUser.alias}

I land on control panel
    Wait  I land on   ${controlPanelUrl}

I am logged in
    Wait  Element should be visible   ${logout}

I browse 'evening dresses' section
    Wait  Click Element  ${dressesMenuButton}
    Wait  I land on    ${dressesLandingUrl}
    Wait  Click Element  ${eveningDressesSideMenuItem} 

I select pink color for the available dress
    Wait  Execute javascript  document.querySelector('${pinkColor}').click()
    
I land on product page
    Wait  I land on  ${dressProduct}

I click "Add to cart"
    Wait  I click  ${addToCartButton}

the "product successfully added" popup is visible
    Wait  Element should be visible   ${continueShoppingButton}
    Wait  Element should be visible   ${proceedCheckoutButton}
    Click Element  ${closePopup}   modifier=False

I am able to see the item in my updated cart
    Mouse Over  ${viewShoppingCart}
    Wait  Element should be visible   ${cartProduct}