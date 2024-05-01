#Locators SupprimerArticleBlog
lnk_Tous = "//span[@class='all']/a"
lnk_ArticleSupprimer1 = "//a[text()='"
lnk_ArticleSupprimer2 = "']/ancestor::div[@class='node post']//div[@class='onDeleteBlogPost']/a"
btn_ArticleSupprimer = "//div[@id='prompt']//span[@class='first-child']/button[text()='Supprimer' or text()='Delete']"


*** Keywords ***
Supprimer un article dans un blog
    [Arguments]    ${vURL}     ${vNomSite}    ${vNomArticle}    
    Go To    ${vURL}/share/page/site/${vNomSite}/blog-postlist
    Click Element    ${lnk_Tous}
    Wait Until Element Is Visible    ${lnk_ArticleSupprimer1}${vNomArticle}${lnk_ArticleSupprimer2 }    
    Click Element    ${lnk_ArticleSupprimer1}${vNomArticle}${lnk_ArticleSupprimer2 }
    Wait Until Element Is Visible    ${btn_ArticleSupprimer}
    Click Element    ${btn_ArticleSupprimer}