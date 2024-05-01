#Locators Suppression une categorie
lnk_Categorie1="//span[text()='"
lnk_Categorie2="']"
lnk_CategorieSupprim1="//span[text()='"
lnk_CategorieSupprim2="']/span[@class='insitu-delete-category']"
btn_CategorieSupprim="(//div[@id='prompt']//span[@class='yui-button yui-push-button']/span[@class='first-child'])"


#Suppression une categorie
    [Arguments]    ${vURL}    ${vNomcategorie}
    Go To    ${vURL}/share/page/console/admin-console/category-manager#
    Mouse Over    ${lnk_Categorie1}${vNomcategorie}${lnk_Categorie2}
    Sleep    3s
    #Wait Until Element Is Visible    ${lnk_CategorieSupprim1}${vNomcategorie}${lnk_CategorieSupprim2}
    Click Element    ${lnk_CategorieSupprim1}${vNomcategorie}${lnk_CategorieSupprim2}
    #Sleep    20s
    Wait Until Element Is Visible    ${btn_CategorieSupprim}    
    Click Element    ${btn_CategorieSupprim}