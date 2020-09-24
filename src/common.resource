***Settings***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource            ${CURDIR}${/}..${/}pageObjects${/}basePage.resource
Resource            ${CURDIR}${/}..${/}pageObjects${/}createAccount.resource
Resource            ${CURDIR}${/}..${/}pageObjects${/}login.resource
Resource            ${CURDIR}${/}..${/}pageObjects${/}controlPanel.resource
Resource            ${CURDIR}${/}..${/}pageObjects${/}dressesLanding.resource
Resource            ${CURDIR}${/}..${/}pageObjects${/}dressProduct.resource
Resource            ${CURDIR}${/}..${/}pageObjects${/}eveningDresses.resource
Resource            ${CURDIR}${/}tools.resource
Resource            ${CURDIR}${/}keywordwrappers${/}main.resource
Variables           ${CURDIR}${/}data${/}users.yml

***Variables***
${retry}        10x
${interval}     500ms
${browser}      Chrome