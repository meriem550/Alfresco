#Locators
#K12_Créer une catégorie

tab_Gest_Categorie = "//span/a[text()='Gestionnaire de catégories']"
link_Categorie = "//*[@id='ygtvlabelel1']"
link_plus = "//*[@id='ygtvlabelel1']/span"
box_Name_Categorie = "//div[@class='bd']/input"
btn_Ok = "//*[@id='yui-gen14-button']"


#Keyword
CreerUneCategorie
    [Arguments]   ${vNom_Categorie} 
    Go To    http://localhost:8088/share/page/console/admin-console/category-manager
    Sleep    2sec
    Mouse Over    ${link_Categorie}
    Sleep    3sec
    Click Element    ${link_plus}
    Input Text    ${box_Name_Categorie}    ${vNom_Categorie}
    Click Button    ${btn_Ok}