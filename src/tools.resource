***Settings***
Resource            ${CURDIR}${/}common.resource

***Keywords***
Wait
    [Documentation]  Retries N times at a given interval. Both these 2 params can be found in common.resource
    [Arguments]   ${keyword}  @{args}
    BuiltIn.Wait Until Keyword Succeeds  ${retry}  ${interval}  ${keyword}  @{args}

I land on
    [Documentation]  Checks the given location Contains part of the webdriver's actual
    [Arguments]   ${page}
    Wait    SeleniumLibrary.Location Should Contain  ${page}  message=None

I go to
    [Documentation]  More BDD-like version of go to. Goes to the given url.
    [Arguments]   ${url}
    SeleniumLibrary.Go To  ${url}
I click
    [Documentation]  BDD version of click element. Clicks the given element
    [Arguments]   ${element}
    Click Element  ${element}  modifier=False
Setup 
    [Documentation]  Starts a webdriver session based on the given argument and url
    [Arguments]   ${url}    ${browser}
    ${email}=    Generate Random String  length=8  chars=[LETTERS][NUMBERS]
    ${domain}=   Generate Random String  5  chars=[LETTERS]
    ${emailAddress}=    Set Variable  ${email}@${domain}.com
    Set Suite Variable  ${emailAddress}
    Run Keyword If  "${browser}"=="Firefox"  Open firefox browser   ${url}
    ...     ELSE    Open Chrome browser   ${url}

Teardown
    Close Browser

Open Chrome browser
  [Arguments]    ${url}
  ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
  Call Method    ${chrome_options}    add_argument    --disable-extensions
  Call Method    ${chrome_options}    add_argument    --disable-gpu
  Call Method    ${chrome_options}    add_argument    --no-sandbox
  Create Webdriver    Chrome    chrome_options=${chrome_options}
  Set Window Size  1920  1280
  Go To    ${url}

Open firefox browser
  [Arguments]    ${url}
  ${firefox_options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver
  Call Method    ${firefox_options}    add_argument    --no-sandbox
  Create Webdriver  Firefox  executable_path=geckodriver  firefox_options=${firefox_options}
  set window Size  1920   1280
  Go To  ${url} 