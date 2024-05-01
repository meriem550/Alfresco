#Localisateurs Supprimer une tâche de réplication
lnk_OutilsAdmin = "//a[@title='Outils admin']"
lnk_TacheDeReplication = "//a[@href='replication-jobs']"
lnk_Tache1 ="//a[@class='new' and span[text()='"      
lnk_Tache2 ="']]"  
Name_TacheAffiché1 = "//h2[text()='"    
Name_TacheAffiché2= "']"
btn_SuprimmerTache = "//button[@id='page_x002e_ctool_x002e_admin-console_x0023_default-delete-button']"
btn_SuprimmerTacheConfirm = "//div[@class='ft']//button[text()='Supprimer']"


#Keyword
Supprimer une tâche de réplication
    # vTache Contiens le nom de la tache de réplication a supprimer
    [Arguments]    ${vTache}
    Click Element    ${lnk_OutilsAdmin}
    Click Element    ${lnk_TacheDeReplication}
    # Selectionner le nom de la tache a supprimer
    Click Element    ${lnk_Tache1}${vTache}${lnk_Tache2}
    # Delais d'attente pour que la tache soit selectionnée
    Sleep    0.40
    # S'assurer que la tache a supprimer est bien selectionnée
    Element Should Be Visible    ${Name_TacheAffiché1}${vTache}${Name_TacheAffiché2}
    Click Button    ${btn_SuprimmerTache}
    Click Button    ${btn_SuprimmerTacheConfirm}
    # Rafraîchir la page Alfresco
    Reload Page
    # S'assurer que la tache a bien été supprimer
    Element Should Not Be Visible    ${lnk_Tache1}${vTache}${lnk_Tache2}
	
	
	