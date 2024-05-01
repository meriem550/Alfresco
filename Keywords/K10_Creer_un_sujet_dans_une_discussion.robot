# Creer nouveau sujet Elements
btn_CreerSujet = "//button[contains(text(), 'Nouveau sujet')]"
input_SujetTitre = "//*[@id='template_x002e_createtopic_x002e_discussions-createtopic_x0023_default-title']"
btn_SubmitCreer = "id=template_x002e_createtopic_x002e_discussions-createtopic_x0023_default-submit-button"

Creer Sujet
    # vBROWSER est le navigateur utilisé pour la session
    # vNom_Site est le nom du site pour le contexte de la discussion
    # vNom_Sujet est le nom que portera le sujet
    # vDISCUSSION_URL   http://localhost:8088/share/page/site/${Nom_Site}/discussions-topicview?topicId=post-1713800154870_6788&listViewLinkBack=true
    [Arguments]    ${vDISCUSSION_URL}    ${vBROWSER}    ${vNom_Sujet}
    Open Browser    ${vDISCUSSION_URL}    ${vBROWSER}
    Maximize Browser Window
    Click Element    ${btn_CreerSujet}
    Input Text    ${input_SujetTitre}    ${vNom_Sujet}
    Click Element    ${btn_SubmitCreer}