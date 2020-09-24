***Settings***
Documentation       Automated testing example
Suite Setup         Setup  ${url}  ${browser}
Suite Teardown      Teardown
Resource            ${CURDIR}${/}..${/}src${/}common.resource

***Test Cases***
Smoke test
    [Setup]
    Given I go to  ${url}
    When I land on  ${url}
    and Wait  Element should be visible   ${login}
    [Teardown]