*** Settings ***
Library           Selenium2Library

*** Variables ***
${frame}          xpath=//*[@id="sidebar-cubes"]/div[1]/div[1]/div
${close}          xpath=//*[@id="sidebar-cubes"]/div[1]/div[1]/div/a    #close frame
${username}       id=username    #Username
${password}       id=password    #Password
${writer}         xpath=//*[@id="sidebar-cubes"]/div[1]
${hambuger}       xpath=//*[@id="sideBarContent"]/div/div/div
${number}         5
${Scroll Page To Location}    ${EMPTY}

*** Test Cases ***
Login
    Open Browser    https://qa.languagelive.voyagersopris.com    ff
    Wait Until Page Contains    Customer Support    30s
    Input Text    j_username    llpd03
    Input Password    j_password    llpd03
    Click Button    Log In!
    Wait Until Page Contains    Need help?    30s
    Click Element    xpath=/html/body/div[1]/div/div/table/tbody/tr/td[2]/div[2]/div[2]/table/tbody/tr/td/table/tbody/tr[3]/td[2]/div
    Select Window
    Wait Until Element Is Visible    xpath=/html/body    30s
    Select Window
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[1]    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[1]

LoginStepUp
    Open Browser    https://qa.stepuptowriting.com/welcome.do    browser=chrome
    Input Text    j_username    peletierc12
    Input Password    j_password    hardwater6
    Click Button    btnSubmit
    Wait Until Page Contains    GRADE LEVEL    30s
    Wait Until Page Contains    K-2    30s

LangLive
    Open Browser    https://qa.lp.voyagersopris.com/    chrome
    Wait Until Page Contains    https://gls.agilix.com/resource/47836903/assets/sessions/OCHMXA/mainimage.png    30s

ForLoop
    @{TestIDs}    Create List
    Append To List    @{TestIDs}    1001    1002
    Append To List    @{TestIDs}    1003    1004
    : FOR    ${element}    IN    @{TestIDs}
    \    Log    ${element}

Multiply
    : FOR    ${INDEX}    IN RANGE    1    11
    \    ${temp}=    Set Variable    ${INDEX}*${number}=
    \    ${result}=    Evaluate    ${INDEX}*${number}
    \    Log    ${temp} ${result}

nLetters
    Open Browser    https://qa.lp.voyagersopris.com/#nletrs    ff
    Maximize Browser Window
    Wait Until Element Is Visible    loginBtn    30s
    Input Text    ${username}    ramesh
    Input Password    ${password}    ramesh
    Click Button    loginBtn

LetrPre
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div/div[1]/div    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div/div[1]/div/a

Intro
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[1]    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[1]
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[1]/div[1]/div    30s

Exit Session
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[1]/div[1]/div/div[3]/div/div/div/div[7]    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[1]/div[1]/div/div[3]/div/div/div/div[7]

Journal
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[1]/div[2]/div[2]/div    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[1]/div[2]/div[2]/div/textarea
    Input Text    xpath=//*[@id="sidebar-cubes"]/div[1]/div[2]/div[2]/div/textarea    THIS IS NEW POST
    Press Key    xpath=//*[@id="sidebar-cubes"]/div[1]/div[2]/div[2]/div/textarea    \\13

Logout
    Wait Until Element Is Visible    xpath=//*[@id="sideBarContent"]/div/div/div    60s
    Click Element    xpath=//*[@id="sideBarContent"]/div/div/div
    Click Link    logout

ScrollBar
    ${width}    ${height}=    Get Window Size
    Log    ${width},${height}
    Sleep    10s
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[1]/div[1]/div    30s
    Scroll Page To Location    \    5000

LetrsSideBar
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[1]    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[1]
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[1]/div[1]/div/div[3]    30s
    Click Element    ${close}
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[2]    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[2]
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[2]/div[1]    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[2]/div[1]/div/a
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[3]    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[3]
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[3]/div[1]/div/div[3]    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[3]/div[1]/div/a
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[4]    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[4]
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[4]/div[1]    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[4]/div[1]/div/a
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[5]    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[5]
    Wait Until Element Is Visible    xpath=//*[@id="sidebar-cubes"]/div[5]/div[1]/div/div[3]    30s
    Click Element    xpath=//*[@id="sidebar-cubes"]/div[5]/div[1]/div/a

testing
    Open Browser    http://ekbana.com/    ff
    Maximize Browser Window
    ${width}    ${height}=    Get Window Size
    Log    ${width},${height}
    Scroll Page To Location    0    5000

*** Keywords ***
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute Javascript    window.scrollTo(${x_location}, ${y_location})
