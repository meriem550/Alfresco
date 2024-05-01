#Locators Supprimer une liste de données (dans un site déjà créé)
link_Sites = "//span[@id='HEADER_SITES_MENU_text']"
link_MesSites = "//td[@id='HEADER_SITES_MENU_MY_SITES_text']/a"
link_SiteCree1 = "//a[text()='"
link_SiteCree2 = "']"
link_ListeDonnees = "//span[@id='HEADER_SITE_DATA-LISTS_text']/a"
link_ListeDonneesCree1 = "//a[text()='"
link_ListeDonneesCree2 = "']"
link_SupprimerListeDonnees1 = "//a[text()='"
link_SupprimerListeDonnees2 = "']/.//span[@class='delete']"
btn_SupprimerListeDonnees = "//span[@class='yui-button yui-push-button alf-primary-button']//button"

#Keyword
Supprimer une liste de donnees (dans un site deja cree)
    [Arguments]    ${vNomSite}    ${vNomListeDonnees}
    Click Element    ${link_Sites}
    Wait Until Element Is Visible    ${link_MesSites}
    Click Element    ${link_MesSites}
    Click Element    ${link_SiteCree1}${vNomSite}${link_SiteCree2}
    Click Element    ${link_ListeDonnees}
    Mouse Over    ${link_ListeDonneesCree1}${vNomListeDonnees}${link_ListeDonneesCree2}
    Wait Until Element Is Visible    ${link_SupprimerListeDonnees1}${vNomListeDonnees}${link_SupprimerListeDonnees2}
    Click Element    ${link_SupprimerListeDonnees1}${vNomListeDonnees}${link_SupprimerListeDonnees2}
    Click Button    ${btn_SupprimerListeDonnees}  