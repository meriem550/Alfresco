#LocatorsRechercher site 
txt_RechercherSite="//div[@class='search-text']//input[@type='text']"
lnk_Recherch= "//button[@type='button']"


#Rechercher site 
    [Arguments]    ${vURL}   ${vNomSite}
    Go to      ${vURL}/share/page/site-finder
    Input Text    ${txt_RechercherSite}    ${vNomSite}
    Click Element    ${lnk_Recherch}