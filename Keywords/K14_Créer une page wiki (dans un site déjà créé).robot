#Localisateurs Créer une page wiki
lnk_Wiki = "//a[text()='Wiki']"
btn_NouvellePageWiki = "//*[@id='template_x002e_toolbar_x002e_wiki-page_x0023_default-create-button-button']"
input_TitreWiki = "//input[@name='pageTitle']"
input_TexteWiki = "//*[@id='tinymce']/p/br"
input_TagsWiki = "//*[@id='template_x002e_createform_x002e_wiki-create_x0023_default-tag-input-field']"
btn_AjouterTagsWiki = "//*[@id='template_x002e_createform_x002e_wiki-create_x0023_default-add-tag-button-button']"
btn_EnregistrerWiki = "//*[@id='template_x002e_createform_x002e_wiki-create_x0023_default-save-button-button']"

#Keyword
Créer une page wiki
    # Un site doit deja etre créer
    # vNomSite c'est le nom du site qui vas contenir la page wiki
    # vTitreWiki contient le titre de la page wiki
    # vText contient le text a afficher au-dessous de champs vTitreWiki
    # vTagsWiki contient le tag (input_TagWiki= pour ecrire le tag, et btn_AjouterTagsWiki= pour l'assosier)
    [Arguments]    ${vNomSite}  ${vTitreWiki}    ${vText}    ${vTagsWiki}
    # Aller directement sur l'adresse url qui contient le site choisi
    Go To    ${vUrl}share/page/site/${vNomSite}/wiki-page?title=Main_Page
    Click Element    ${lnk_Wiki}
    Click Button    ${btn_NouvellePageWiki}
    Input Text    ${input_TitreWiki}    ${vTitreWiki}
    # commande Javascript pour le "tinyMCE"
    Execute Javascript    tinyMCE.activeEditor.setContent('${vText}')
    Input Text    ${input_TagsWiki}    ${vTagsWiki}
    Click Button    ${btn_AjouterTagsWiki}
    Click Element    ${btn_EnregistrerWiki}
    # S'assurer que le titre de la page wiki créer est affiché
    Wait Until Element Contains    ${titre_PageWiki}    ${vTitreWiki}