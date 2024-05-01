
#Locators CreerLiensSites
btn_NeLien = "//button[text()='Nouveau lien']"
txt_TitreLien = "//input[@name='title']"
txt_URL = "//input[@name='url']"
btn_Enregis = "//button[text()='Enregistrer']"
txt_Description = "//div[@class='yui-u']/descendant::textarea"
txt_Tags = "//div[@class='clear']/following-sibling::input"
btn_Ajouter = "//button[text()='Ajouter']"
chk_Interne = "//input[@name='internal']"
lnk_verifierLiens1 ="//a[text()='"
lnk_verifierLiens2 ="']"


*** Keywords ***
Creer un lien nominal dans sites
    [Arguments]    ${vURL}     ${vvNomSite}    ${vTitreLien}    ${vURLLien}    ${vDescription}    ${vTags}    ${Vchk_Interne}             
    Go To    ${vURL}/share/page/site/${vvNomSite}/links

    Click Element    ${btn_NeLien}
    Input Text    ${txt_TitreLien}    ${vTitreLien}
    Input Text    ${txt_URL}    ${vURLLien}
    Input Text    ${txt_Description}    ${vDescription}
    Run Keyword If    '${Vchk_Interne}' == 'oui'    Select Checkbox      ${chk_Interne}
    Run Keyword If    '${Vchk_Interne}' == 'non'    Unselect Checkbox    ${chk_Interne}
    Input Text    ${txt_Tags}    ${vTags}
    Input Text    ${txt_URL}    ${vURLLien}
    Click Element    ${btn_Ajouter}
    Click Element    ${btn_Enregis}
    Wait Until Element Is Visible    ${lnk_verifierLiens1}${vTitreLien}${lnk_verifierLiens2}
    Element Should Contain    ${lnk_verifierLiens1}${vTitreLien}${lnk_verifierLiens2}    ${vTitreLien} 