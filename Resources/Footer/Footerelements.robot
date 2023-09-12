*** Settings ***
Documentation    Keywords for Footer
Resource        ../import.resource


*** Variables ***
${FOOTER_TB_LOGO}      (//img[@alt='TestBench'])[3]
#Footer Headlines universal locators
${TESTBENCH_HL}        (//span[contains(@class, 'menu-item--headline')])[1]
${LEARN_HL}            (//span[contains(@class, 'menu-item--headline')])[2]
${SUPPORT_HL}          (//span[contains(@class, 'menu-item--headline')])[3]
${COMPANY_HL}          (//span[contains(@class, 'menu-item--headline')])[4]

*** Keywords ***
Check Footer Test Bench Logo
    [Documentation]    This keyword verifies that testbench logo is showing in the bottom right of footer
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Page Should Contain Element    ${FOOTER_TB_LOGO}

Validate Footer HeadLine
    [Documentation]    This keyword is used for validating headline items of footer 
    [Arguments]    ${headlines}
    IF    "${headlines}" == "TestBench"
         Wait Until Page Contains Element    ${TESTBENCH_HL}
    ELSE IF  "${headlines}" == "Learn"
         Wait Until Page Contains Element    ${LEARN_HL}
    ELSE IF    "${headlines}" == "Support"
         Wait Until Page Contains Element    ${SUPPORT_HL}
    ELSE IF    "${headlines}" == "Company"
         Wait Until Page Contains Element    ${COMPANY_HL}
    END

