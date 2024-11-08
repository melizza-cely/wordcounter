*** Variables ***
${TEXT_INPUT}    lumu lumu lumu lumu lumu illuminates illuminates attacks and adversaries lumu illuminates all attacks and adversaries
${EXPECTED_WORD_COUNT}    16
${EXPECTED_CHAR_COUNT}    117

@{WORDS}    lumu    illuminates    attacks    adversaries    all    and
@{EXPECTED_COUNTS}    6    3    2    2    1    1
@{EXPECTED_PERCENTAGES}    43    21    14    14    7    7

${TEXTAREA_INPUT}    xpath://textarea[@class="form-control table-data finalResult textarea_revision processed"]
${WORD_COUNT_DISPLAY}    xpath://*[@id="word_count"]
${CHAR_COUNT_DISPLAY}    xpath://*[@id="character_count"]

*** Keywords ***
Input Text Area
    [Arguments]    ${text}
    Input Text    ${TEXTAREA_INPUT}    ${text}

Get Word Count
    ${word_count}=    Get Text    ${WORD_COUNT_DISPLAY}
    RETURN    ${word_count}

Get Character Count
    ${char_count}=    Get Text    ${CHAR_COUNT_DISPLAY}
    RETURN    ${char_count}

Scroll to Bottom
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

Validate Density
    [Arguments]    ${word}    ${expected_count}    ${expected_percentage}
    ${xpath}=    Set Variable    xpath=//span[text()="${word}"]/parent::a//span[@class='badge']
    Wait Until Element Is Visible    ${xpath}    3s
    ${keyword_density}=    Get Text    ${xpath}
    Should Contain    ${keyword_density}    ${expected_count} (${expected_percentage}%)