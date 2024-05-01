# Supprimer Dossier Elements
checkbox_Dossier1 = "//a[text()='"
checkbox_Dossier2 = "']/ancestor::tr//input"
list_ElementsSelect = "//*[@id='template_x002e_documentlist_v2_x002e_myfiles_x0023_default-selectedItems-button-button']"
link_SupprimerSelect = "//*[@id='yui-gen13']/a/span"
btn_Supprimer = "//button[contains(.,'Supprimer')]"

Supprimer Dossier
    # vURL_MesFichiers est l'URL de la page "Mes fichiers":  http://localhost:8088/share/page/context/mine/myfiles
    # vBROWSER est le navigateur utilisé pour la session
    # vNomDossierSupr est le nom du dossier a supprimer
    [Arguments]    ${vURL_MesFichiers}    ${vBROWSER}    ${vNomDossierSupr}
    Open Browser    ${vURL_MesFichiers}    ${vBROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${checkbox_Dossier1}${vNomDossierSupr}${checkbox_Dossier2}
    Select Checkbox    ${checkbox_Dossier1}${vNomDossierSupr}${checkbox_Dossier2}
    Wait Until Element Is Visible    ${list_ElementsSelect}
    Click Element    ${list_ElementsSelect}
    Click Element    ${link_SupprimerSelect}
    Click Button    ${btn_Supprimer}



