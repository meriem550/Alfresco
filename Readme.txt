# G1269
Dépôt pour les keywords Robot framework

-------------------------------- Projet d'automatisation Alfresco --------------------------------
Lignes directrices pour le dépôt des fichiers de code dans le repository du projet : 
Dans le dossier Keywords, l'équipe projet devra stocker l'ensemble des fichiers communs du projet d'automatisation
des tests pour Alfresco. Ces fichiers contiennent les keywords rédigés.
-------------------------------------------------------------------------------------------------
Les fichiers créés doivent respecer la convention de nommage qui suit :

Le nom du fichier doit commencer par le code du keyword indiqué dans le fichier Excel.
Ce préfixe doit être suivi de votre prénom et du nom du keyword. 
Exemple k47_Talel_Login.robot
Les noms des fichiers ne doivent pas comporter des caractères accentués ou des caractères spéciaux. 
Seules les lettres, les chiffres et le tiret bas (_) sont acceptés. 
Il est obligatoire de commenter au maximum le script.

-------------------------------------------------------------------------------------------------
Le contenu du fichier doit respecter le format suivant : 
Au début du fichier nous devous retrouver les localisateurs utilisés dans le keyword.
Juste en dessous, c'est le code du keyword qui doit être inséré.
Voici un exemple de fichier : 
-------------------------------------------------------------------------------------------------
# Login Page Elements
txt_UserName = "name=username"
txt_Password = "name=password"
btn_Login = "xpath=//button[contains(text(), 'Connexion')]"

Login
    # vURL contient l'adresse URL de la page web
    # vBrowser contient l'identifiant du navigateur cible
    # vUsername contient le login
    # vPassword contient le mot de passe
    [Arguments]    ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
    Set Selenium Timeout    ${TIMEOUT}
    Open Browser    ${vURL}    ${vBrowser}    add_argument('--lang=fr')
    Maximize Browser Window
    Input text    ${txt_UserName}    ${vUsername}
    Input text    ${txt_Password}    ${vPassword}
    Click Button    ${btn_Login}
    Wait Until Element Is Visible    ${lblTitle}
    # S'assurer que l'utilisateur est connecte et que le tableau de bord est affiche
    Element Should Contain    ${lblTitle}    Tableau de bord de
-------------------------------------------------------------------------------------------------
