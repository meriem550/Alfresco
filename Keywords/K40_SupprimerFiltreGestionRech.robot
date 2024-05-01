#Locators SupprimerFiltre
lnk_FiltrSupprimer1 = "//span[@class='value'and text()='"
lnk_FiltrSupprimer2 = "']/ancestor::tr//span[@class='alfresco-renderers-PublishAction']"
btn_filtrSupprimer = "//div[@class='footer']//span[text()='Oui']"


*** Keywords ***
Supprimer un Filtre 
    [Arguments]    ${vURL}     ${vNomFiltre}    
    Go To    ${vURL}/share/page/dp/ws/faceted-search-config
    Click Element    ${lnk_FiltrSupprimer1}${vNomFiltre}${lnk_FiltrSupprimer2}
    Click Element    ${btn_filtrSupprimer}