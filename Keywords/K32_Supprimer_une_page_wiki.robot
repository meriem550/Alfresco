# Supprimer Wiki Elements
link_supprimer1 = "//div[contains(@class, 'deletePage')]//a[contains(@title,'"
link_supprimer2 = "')]"
btn_Supprimer = "//button[contains(.,'Supprimer')]"

Supprimer une page WIKI
    # vNom_Site est le nom du site cible.
    # vURL_WIKIList est l'URL de la liste des pages Wiki du site : http://localhost:8088/share/page/site/${vNom_Site}/wiki
    # vBROWSER est le navigateur utilisé pour la session
    # vNom_WikiaSupprimer est le nom du Wiki à supprimer
    [Arguments]    ${vURL_WIKIList}    ${vBROWSER}    ${vNom_WikiaSupprimer}
    Open Browser    ${vURL_WIKIList}    ${vBROWSER}
    Maximize Browser Window
    Click Element    ${link_supprimer1}${vNom_WikiaSupprimer}${link_supprimer2}
    Click Button    ${btn_Supprimer}
    Close Browser
21_