#Locators SupprimerFichiers
link_Rechercher = "//input[@class='alfresco-header-SearchBox-text']"
link_Fichier1 = "//mark[text()='"
link_Fichier2 = "']"
link_SupprimerFichier = "//div[@id='onActionDelete']/a/span"
btn_Supprimer = "//div[@class='ft']//span[@class='yui-button yui-push-button']//button[@type='button']"

#Keywords
Supprimer un fichier
    [Arguments]    ${vNomFichier}
    Input Text    ${link_Rechercher}    ${vNomFichier}
    Press Keys    ${link_Rechercher}    ENTER
    Wait Until Element Is Visible    ${link_Fichier1}${vNomFichier}${link_Fichier2}
    Click Element    ${link_Fichier1}${vNomFichier}${link_Fichier2}
    Click Element    ${link_SupprimerFichier}
    Click Button    ${btn_Supprimer}  