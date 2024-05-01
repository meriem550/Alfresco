#Locators CreerFichierHTML
btn_CreeHTML = "//div[@class='create-content']//span[@class='first-child']"
lnk_HTML = "//ul[@class='first-of-type']//span[@class='html-file']"
txt_NomHTML = "//div[@class='form-fields']/descendant::input[@name='prop_cm_name']"
txt_FichierTitre = "//div[@class='form-field']//input[@type='text' and @name='prop_cm_title']"
txt_fichierDescription = "//div[@class='form-field alf-textarea']//textarea"
btn_FichierCreer = "//div[@class='form-buttons']//span[@class='first-child']//button[text()='Créer']"
lnk_VeriFichierHTML1 ="//a[contains(text(),'"
lnk_VeriFichierHTML2="')]"



*** Keywords ***
Creer un fichier HTML  
 [Arguments]    ${vURL}     ${vNomfichierHTML}    ${vText}    ${vTitre}    ${vDescription}
    Go To    ${vURL}/share/page/context/mine/myfiles
    Click Element    ${btn_CreeHTML}
    Click Element    ${lnk_HTML}
    Input Text    ${txt_NomHTML}    ${vNomfichierHTML}
    Execute Javascript    tinyMCE.activeEditor.setContent('${vText}') 
    Wait Until Page Contains Element    ${txt_FichierTitre}
    Input Text    ${txt_FichierTitre}    ${vTitre}
    Input Text    ${txt_fichierDescription}    ${vDescription}
    Click Element    ${btn_FichierCreer}
    Go To    ${vURL}/share/page/context/mine/myfiles
    Wait Until Page Contains Element    ${lnk_VeriFichierHTML1}${vNomfichierHTML}${lnk_VeriFichierHTML2}
    Element Should Contain    ${lnk_VeriFichierHTML1}${vNomfichierHTML}${lnk_VeriFichierHTML2}    ${vNomfichierHTML}