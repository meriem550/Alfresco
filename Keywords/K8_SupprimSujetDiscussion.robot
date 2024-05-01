#Locators suppression un sujet dans discussion
lnk_SujetSuppr1="//a[text()='"
lnk_SujetSuppr2="']/ancestor::div/ancestor::div/div/div[contains(@class,'onDeleteTopic')]/a"
btn_SujetSuppr="//button[text()='Supprimer']"


#Suppression un sujet dans discussion    
    [Arguments]     ${vURL}    ${vNomsujet}    ${vNomsite} 
    Go To    ${vURL}/share/page/site/${vNomsite}/discussions-topiclist
    Click Element    ${lnk_SujetSuppr1}${vNomsujet}${lnk_SujetSuppr2}
    Click Element    ${btn_SujetSuppr}

