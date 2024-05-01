#SupprimerTypePersonnalise
link_gestModel = "//a[@title='Gestionnaire de modèles']"
btn_model = "//span[text()='"
btn_model1 = "']"
btn_type = "//tr[.//span[contains(text(),'"
btn_type1 = "')]]//*[text()='Actions']"
btn_remove = "//div[@class='dijitPopup Popup']/div/div/div/table/tbody/tr/td[text()='Supprimer']"
btn_removeConfirm = "//div[@id='CMM_DELETE_TYPE_DIALOG']//span[text()='Supprimer']"


SupprimerTypePersonnalise
    [Arguments]    ${vModelName}    ${vTypeName}
    Go To    http://localhost:8088/share/page/console/admin-console/application
    Click Element    ${link_gestModel}
    Click Element    ${btn_model}${vModelName}${btn_model1}
    Wait Until Element Is Visible    ${btn_type}${vTypeName}${btn_type1}
    Click Element    ${btn_type}${vTypeName}${btn_type1}
    Click Element    ${btn_remove}
    Click Element    ${btn_removeConfirm}