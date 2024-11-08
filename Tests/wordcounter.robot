*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    BuiltIn

Resource    ../Resources/keywords.robot

Suite Setup    Open Browser    https://wordcounter.net/    remote    http://selenium-standalone-chrome:4444/wd/hub
Suite Teardown    Sleep    10s
Test Setup    Maximize Browser Window
Test Teardown    Capture Page Screenshot

*** Test Cases ***
Validate Word Count
    [Documentation]    Validate that the word count is correctly displayed
    Input Text Area    ${TEXT_INPUT}
    ${word_count}=    Get Word Count
    Should Be Equal As Numbers    ${word_count}    ${EXPECTED_WORD_COUNT}

Validate Character Count
    [Documentation]    Validate that the character count is correctly displayed
    Input Text Area    ${TEXT_INPUT}
    ${char_count}=    Get Character Count
    Should Be Equal As Numbers    ${char_count}    ${EXPECTED_CHAR_COUNT}

Validate Keyword Density
    [Documentation]    Validate that the keyword density for specific words is correct
    Input Text Area    ${TEXT_INPUT}
    Scroll to Bottom
    Sleep    1s 
    ${words_length}=    Get Length    ${WORDS}
    FOR    ${index}    IN RANGE    0    ${words_length}
        ${word}=    Get From List    ${WORDS}    ${index}
        ${expected_count}=    Get From List    ${EXPECTED_COUNTS}    ${index}
        ${expected_percentage}=    Get From List    ${EXPECTED_PERCENTAGES}    ${index}
        Log    Word: ${word}, Expected Count: ${expected_count}, Expected Percentage: ${expected_percentage}
        Validate Density    ${word}    ${expected_count}    ${expected_percentage}
    END