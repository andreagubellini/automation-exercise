***Settings***
Documentation       Automated testing example
Suite Setup         Setup  ${url}  ${browser}
Suite Teardown      Teardown

Resource            ${CURDIR}${/}..${/}src${/}common.resource

***Test Cases***
Register user
    Given I go to login page
    and I input ${emailAddress} as email address
    and I click Create account button
    and I land on  ${accountCreationUrl}
    When I insert valid data in all required input forms
    and I click  ${registerButton}
    Then I land on control panel

Adding an item to the cart
    Given I am logged in
    and I browse 'evening dresses' section
    and I select pink color for the available dress
    When I land on product page
    and I click "Add to cart"
    Then the "product successfully added" popup is visible
    and I am able to see the item in my updated cart

    
