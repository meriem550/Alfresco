#Locators
#K1_Créer un article dans un blog (dans un site déjà créé)

box_Recherche_Gr = "//*[@class='search-term']"
btn_Recherche_Gr = "//*[@id='template_x002e_site-finder_x002e_site-finder_x0023_default-button-button']"
link_Site1 = "//a[contains(text(),'"
link_Site2 = "')]"
tab_Blog = "//a[@title='Blog']"
btn_NewArticle = "//button[contains(text(),'Nouvel article')]"
input_Titre = "//*[@id='template_x002e_postedit_x002e_blog-postedit_x0023_default-title']"
input_Tag = "//input[@id='template_x002e_postedit_x002e_blog-postedit_x0023_default-tag-input-field']"
btn_Publish = "//*[text()='Publier en interne']"

#Keyword

CreerArticleDansBlog
    [Arguments]    ${vNom_Site}    ${vTitre_article}    ${vText_article}	${vTag_Article}
    Go To    http://localhost:8088/share/page/site-finder
    Input Text    ${box_Recherche_Gr}    SiteTestGr3
    Click Button    ${btn_Recherche_Gr}
    Wait Until Element Is Visible    ${link_Site1}${vNom_Site}${link_Site2}
    Click Element    ${link_Site1}${vNom_Site}${link_Site2}
    Click Element    ${tab_Blog}
    Click Button    ${btn_NewArticle}
    Input Text    ${input_Titre}    ${vTitre_article}
    Execute Javascript  tinyMCE.activeEditor.setContent('${vText_article}')
    Input Text    ${input_Tag}    text
    Click Button    ${btn_Publish}
