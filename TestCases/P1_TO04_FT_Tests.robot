*** Settings ***
Documentation       Footer Section

Resource            ..//Resources/import.resource

Test Setup          Start Test Bench    ${EMPTY}    ${EMPTY}
Test Teardown       Close Browser
