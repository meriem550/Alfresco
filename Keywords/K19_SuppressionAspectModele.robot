
#Locators Suppression un aspect dans un modele
lnk_Action1= "//span[text()='"
lnk_Action2="']/ancestor::tr/td//span[text()='Actions']"
btn_ActionAspectModSupprim="//div[@class='footer']//span[text()='Supprimer']"
lnk_ActionAspectModSupprim="(//div[@class='dijitPopup Popup'])//td[text()='Supprimer']"



#Suppression un aspect dans un modele
    [Arguments]     ${vURL}    ${vNomaspect}     ${vNommodele}
    Go To    ${vURL}/share/page/console/admin-console/custom-model-manager#view=types_property_groups&model=${vNommodele}
    Wait Until Element Is Visible    ${lnk_Action1}${vNomaspect}${lnk_Action2}
    Click Element    ${lnk_Action1}${vNomaspect}${lnk_Action2}
    Click Element    ${lnk_ActionAspectModSupprim}
    Click Element    ${btn_ActionAspectModSupprim}
