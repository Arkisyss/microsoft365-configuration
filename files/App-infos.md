- **AADReporting** 1b912ec3-a9dd-4c4d-a53e-76aa7adb28d7
    
    AADReporting est une **API** (interface de programmation) qui permet de détecter les tentatives de connexion (sign-in) dans **Azure Active Directory (AAD)**. Voici quelques points importants à savoir à son sujet :
    
    - **Objectif** : L'API **AADReporting** est utilisée pour surveiller les tentatives de connexion, en particulier celles qui échouent. Elle peut aider à détecter des problèmes d'authentification et à comprendre les erreurs rencontrées lors des connexions.
    - **Utilisation** :
        - **Détection des échecs de connexion** : L'API **AADReporting** peut être utilisée pour détecter les échecs de connexion non interactifs (par exemple, les tentatives de connexion pour les comptes d'administrateur).
        - **Analyse des erreurs d'authentification** : Elle permet de comprendre pourquoi une tentative de connexion a échoué (par exemple, certificat incorrect, problème d'authentification, etc.).
    - **Exemple d'utilisation** :
        - Si un administrateur constate des échecs de connexion pour l'application **AADReporting**, il peut enquêter sur les raisons de ces échecs en utilisant cette API.
    
    En résumé, **AADReporting** est un outil qui aide à surveiller et à analyser les tentatives de connexion dans **Azure Active Directory**. Il peut être utile pour diagnostiquer les problèmes d'authentification et améliorer la sécurité de votre environnement.
    
    [Microsoft Entra monitoring and health documentation - Microsoft Entra ID](https://learn.microsoft.com/en-us/entra/identity/monitoring-health/)
    
- **Azure AD Identity Governance - Entitlement Management** 810dcf14-1858-4bf2-8134-4c369fa3235b
    
    Azure AD Identity Governance - Entitlement Management est une fonctionnalité de **gouvernance des identités** qui permet aux organisations de gérer le cycle de vie des identités et des accès à grande échelle. Voici les points clés à connaître à ce sujet :
    
    - **Qu’est-ce que l’entitlement management ?**
        - L’**entitlement management** est une fonctionnalité de **gouvernance des identités** qui automatise les flux de travail de demande d’accès, les affectations d’accès, les revues et les expirations.
        - Dans les organisations, les utilisateurs ont besoin d’accéder à divers groupes, applications et sites SharePoint en vue d’exécuter leurs tâches. Gérer cet accès peut être complexe, car les exigences évoluent. De plus, la collaboration avec des organisations externes peut rendre la gestion encore plus difficile.
        - L’**entitlement management** permet de gérer plus efficacement l’accès aux groupes, applications et sites SharePoint pour les utilisateurs internes, ainsi que pour les utilisateurs externes qui ont besoin d’accéder à ces ressources.
    - **Pourquoi utiliser l’entitlement management ?**
        - Les organisations sont souvent confrontées à des défis lorsqu’il s’agit de gérer l’accès des utilisateurs à des ressources :
            - Les utilisateurs peuvent ne pas savoir quel accès ils devraient avoir, et même s’ils le savent, ils peuvent avoir du mal à trouver les bonnes personnes pour approuver leur accès.
            - Une fois qu’un utilisateur a accès à une ressource, il peut le conserver plus longtemps que nécessaire.
        - Ces problèmes sont encore plus complexes lorsque vous collaborez avec des organisations externes. Par exemple, il peut être difficile de savoir qui dans l’autre organisation a besoin d’accéder à vos ressources et vice versa.
        - L’entitlement management peut aider à résoudre ces défis.
    - **Fonctionnalités de l’entitlement management** :
        - Contrôle de l’accès aux applications, groupes, équipes et sites SharePoint avec des approbations à plusieurs étapes.
        - Attribution automatique d’accès en fonction des propriétés de l’utilisateur (par exemple, département ou centre de coûts).
        - Suppression automatique de l’accès lorsque les propriétés de l’utilisateur changent.
    
    [What is entitlement management? - Microsoft Entra ID Governance](https://learn.microsoft.com/en-us/entra/id-governance/entitlement-management-overview)
    
- **Azure Advanced Threat Protection (ATP)** 7b7531ad-5926-4f2d-8a1d-38495ad33e17
    
    Azure Advanced Threat Protection (ATP) est une solution de sécurité basée sur le cloud qui vous aide à détecter et à enquêter sur les incidents de sécurité au sein de vos réseaux. Voici les points clés à connaître à son sujet :
    
    - **Objectif** :
        - **Azure ATP** est conçu pour surveiller les activités suspectes et détecter les attaques avancées dans un environnement hybride (à la fois sur site et dans le cloud).
        - Il offre une protection contre les menaces telles que le vol d’identifiants, les mouvements latéraux et les attaques malveillantes.
    - **Fonctionnalités** :
        - **Détection des attaques** : **Azure ATP** surveille le comportement des entités (utilisateurs, appareils, ressources) pour détecter les anomalies. Il utilise l’intelligence
        intégrée pour identifier les techniques d’attaquant courantes et nouvelles.
        - **Investigation** : L’outil réduit le bruit des alertes et fournit une vue en temps réel de la chronologie des attaques, facilitant ainsi l’investigation.
        - **Intégration avec Windows Defender ATP** : **Azure ATP** s’intègre à **Windows Defender ATP** pour une expérience d’investigation complète, couvrant à la fois les points d’extrémité et l’identité.
    - **Scénarios d’utilisation** :
        - **Détection des mouvements latéraux** : Lorsqu’un attaquant tente de se déplacer d’un utilisateur ou d’un appareil vers d’autres ressources, **Azure ATP** peut détecter ces activités suspectes.
        - **Protection des identifiants** : Il surveille les informations d’identification des utilisateurs stockées dans Active Directory pour prévenir les attaques telles que le « Pass-the-Hash ».
        - **Analyse des flux de trafic réseau** : **Azure ATP** fournit des informations sur le trafic réseau, aidant à identifier les schémas d’attaques.
    
    En résumé, **Azure ATP** est un outil essentiel pour renforcer la sécurité de votre environnement en détectant et en répondant aux menaces avancées.
    
    [Azure threat protection](https://learn.microsoft.com/en-us/azure/security/fundamentals/threat-detection)
    
    [What is Microsoft Defender for Identity? - Microsoft Defender for Identity](https://learn.microsoft.com/en-us/defender-for-identity/what-is)
    
- **Azure Credential Configuration Endpoint Service** ea890292-c8c8-4433-b5ea-b09d0668e1a6
    
    L’Azure Credential Configuration Endpoint Service est un service qui permet de configurer les informations d’identification pour l’accès à certaines ressources Azure. Voici quelques points importants à savoir à ce sujet :
    
    - **Objectif** :
        - Ce service est utilisé pour gérer les informations d’identification nécessaires pour déployer des applications vers **Azure App Service**.
        - Il permet de sécuriser le déploiement d’applications à partir d’un ordinateur local vers **Azure App Service** en utilisant des protocoles tels que **Git** ou **FTP/S**.
    - **Types d’informations d’identification** :
        1. **Informations d’identification au niveau de l’utilisateur (user-level credentials)** :
            - Un ensemble d’informations d’identification pour l’ensemble du compte Azure.
            - Ces informations d’identification peuvent être utilisées pour déployer vers **Azure App Service** pour n’importe quelle application, dans n’importe quel abonnement, tant que le compte Azure a les autorisations nécessaires.
            - Elles sont affichées par défaut dans l’interface graphique du portail Azure (par exemple, dans les pages Vue d’ensemble et Propriétés de la ressource de l’application).
            - Ne partagez pas ces informations d’identification avec d’autres utilisateurs Azure.
        2. **Informations d’identification au niveau de l’application (app-level credentials)** :
            - Un ensemble d’informations d’identification pour chaque application.
            - Ces informations d’identification sont générées automatiquement lors de la création de l’application.
            - Elles ne peuvent pas être configurées manuellement, mais peuvent être réinitialisées à tout moment.
            - Elles sont spécifiques à chaque application et ne peuvent être utilisées que pour déployer vers cette application.
    - **Configuration des informations d’identification** :
        - Vous pouvez configurer les informations d’identification au niveau de l’utilisateur à l’aide de l’**Azure CLI**, de **PowerShell Azure** ou du portail Azure.
        - Pour l’accès FTP/FTPS, vous devez utiliser un nom d’utilisateur au format : `<nom-de-l'application>\<nom-d'utilisateur>`.
    
    En résumé, l’**Azure Credential Configuration Endpoint Service** facilite la gestion sécurisée des informations d’identification pour le déploiement d’applications vers **Azure App Service**.
    
    [Configure deployment credentials - Azure App Service](https://learn.microsoft.com/en-us/azure/app-service/deploy-configure-credentials?tabs=cli)
    
- **Azure Purview** 73c2949e-da2d-457a-9607-fcc665198967
    
    Azure Purview est une solution de **gouvernance des données** qui vous permet de gérer et de protéger votre écosystème de données à  travers des environnements hybrides, multicloud et SaaS. Voici les principaux aspects à connaître :
    
    1. **Objectif de Microsoft Purview** :
        - **Gouvernance des données** : Microsoft Purview vous aide à comprendre et à gérer vos données, à les protéger et à garantir leur conformité.
        - **Découverte automatique des données** : Il crée une carte complète et à jour de votre paysage de données grâce à la découverte automatique des données, à la classification des données sensibles et à la traçabilité complète des données.
        - **Catalogue de données** : Microsoft Purview Data Catalog permet de découvrir facilement les données en utilisant des termes de recherche familiers et fournit une vue interactive de la lignée des données.
        - **Insights sur les données** : Il offre des informations sur la gestion des données sensibles dans l’ensemble de votre écosystème de données.
        - **Partage de données sans duplication** : Vous pouvez partager des données au sein ou entre les organisations sans avoir à les dupliquer.
    2. **Composants de Microsoft Purview** :
        - **Microsoft Purview Data Map** : Crée une carte unifiée de vos actifs de données et de leurs relations pour une gouvernance plus efficace.
        - **Microsoft Purview Data Catalog** : Rend les données facilement découvrables pour les consommateurs de données.
        - **Microsoft Purview Data Estate Insights** : Offre une vue d’ensemble des données sensibles et des activités de gestion des données.
        - **Microsoft Purview Data Sharing** (en version préliminaire) : Permet de partager des données sans duplication.
    3. **Changement de nom** :
        - **Azure Purview** est désormais **Microsoft Purview**. Le service a été renommé pour refléter son rôle plus large dans la gouvernance des données.
    
    En résumé, **Microsoft Purview** est un outil essentiel pour gérer, protéger et explorer vos données dans un environnement hybride et multicloud.
    
    [Learn about Microsoft Purview](https://learn.microsoft.com/en-us/purview/purview)
    
- **Dataverse** 00000007-0000-0000-c000-000000000000
    
    Dataverse est une **plateforme de données** intelligente, sécurisée et évolutive qui vous permet de créer et d’exécuter des applications, des flux et des agents intelligents. Voici quelques points clés à connaître à son sujet :
    
    - **Création d’applications** : Avec **Dataverse**, vous pouvez créer et exécuter des milliers d’applications en utilisant un environnement **low-code**. Cela signifie que vous pouvez développer des applications sans avoir à écrire beaucoup de code manuellement.
    - **Tables communes** : **Dataverse** utilise des tables communes pour stocker vos données. Vous pouvez étendre ces tables avec des attributs personnalisés et des significations
    sémantiques. Cela facilite la gestion et la recherche de vos données.
    - **Intégration avec le Common Data Model** : **Dataverse** est basé sur le **Common Data Model (CDM)**, qui fournit un modèle de données standardisé pour les applications.
    Cela permet une intégration transparente avec d’autres services Microsoft tels que **Dynamics 365** et **Power Platform**.
    - **Sécurité et conformité** : **Dataverse** offre des fonctionnalités de sécurité robustes, notamment le chiffrement avancé, un contrôle d’accès précis et une intégration profonde avec **Azure Active Directory**.
    
    En résumé, **Dataverse** est un outil puissant pour créer, gérer et explorer vos données dans un environnement sécurisé et évolutif.
    
    [What is Microsoft Dataverse? - Power Apps](https://learn.microsoft.com/en-us/power-apps/maker/data-platform/data-platform-intro)
    
- **Microsoft Cloud App Security** 05a65629-4c1b-48c1-a78b-804c4abdd4af
    
    Microsoft Cloud App Security est une solution de  sécurité qui vous permet de protéger vos applications cloud et de gérer  les risques associés à leur utilisation. Voici quelques points clés à  connaître à son sujet:
    
    - **Découverte des applications cloud** : Microsoft Cloud App Security vous aide à découvrir et à surveiller les applications cloud utilisées dans votre organisation. Vous pouvez identifier les applications autorisées et non autorisées, ainsi que les risques associés à leur utilisation.
    - **Contrôle des accès et des activités** : Vous pouvez définir des politiques pour contrôler l’accès aux applications cloud et surveiller les activités des utilisateurs. Par exemple, vous pouvez bloquer l’accès à certaines applications ou exiger une authentification multifacteur.
    - **Protection contre les menaces** : La solution détecte les menaces telles que les activités suspectes, les fuites de données et les comportements malveillants dans les applications cloud. Elle vous alerte et vous permet de prendre des mesures pour protéger vos données.
    - **Intégration avec d’autres services Microsoft** : Microsoft Cloud App Security s’intègre avec d’autres services de sécurité Microsoft tels que Azure Active Directory, Microsoft Defender ATP et Microsoft Information Protection.
    
    En résumé, Microsoft Cloud App Security est un outil essentiel pour sécuriser vos applications cloud et protéger vos données contre les menaces.
    
    [Overview - Microsoft Defender for Cloud Apps](https://learn.microsoft.com/en-us/defender-cloud-apps/what-is-defender-for-cloud-apps)
    
    [Get started - Microsoft Defender for Cloud Apps](https://learn.microsoft.com/en-us/defender-cloud-apps/get-started)
    
- **Microsoft Developer Sample Data Packs** a1cffbc6-1cb3-44e4-a1d2-cee9cce700f1 (prod)
    - Les **Microsoft Developer Sample Data Packs** sont des ensembles de données d’échantillons fournis aux développeurs dans le cadre du **Microsoft 365 Developer Program**.
    - Ils contiennent des données fictives qui permettent aux développeurs de créer et de tester leurs solutions plus rapidement.
    - Par exemple, les packs de données d’échantillons incluent des utilisateurs fictifs, des boîtes aux lettres, des événements de calendrier et d’autres données pour simuler des scénarios réels.
    
    [Use sample data packs with your Microsoft 365 Developer Program subscription](https://learn.microsoft.com/en-us/office/developer-program/install-sample-packs)
    
- **Microsoft Developer Sample Packs for SharePoint** 18cd1722-ae3d-4729-8e39-0ba15c742e28 (prod)
    - Ces packs d’échantillons sont spécifiquement destinés aux développeurs SharePoint.
    - Ils comprennent des modèles de site SharePoint que vous pouvez installer et évaluer comme des solutions personnalisées pour votre organisation.
    - Par exemple, vous pouvez choisir parmi six modèles de site pour expérimenter et modéliser des solutions SharePoint pour la collaboration, la communication, l’engagement et la gestion des connaissances.
- **Microsoft Flow Service (Power Automate)** 7df0a125-d3be-4c96-aa54-591f83ff541c (prod)
    - **Microsoft Flow**, désormais appelé **Power Automate**, est une plateforme d’automatisation des processus.
    - Elle permet aux utilisateurs de créer des flux automatisés pour gérer des tâches répétitives, des notifications, des alertes, etc.
    - Vous pouvez connecter des systèmes, des applications cloud et des sites web pour automatiser des processus métier.
    - Power Automate offre des fonctionnalités telles que l’intégration avec plus de 1 000 connecteurs prédéfinis, des modèles de flux préconstruits et des capacités d’automatisation basées sur l’IA.
- **Microsoft Forms** c9a559d2-7aab-4f13-a6ed-e7e9c52aec87
    - **Microsoft Forms** est un outil gratuit qui permet de créer des sondages, des formulaires, des questionnaires et des quiz en ligne.
    - Vous pouvez personnaliser vos formulaires avec différents types de questions, des thèmes et de la logique de branchement.
    - Les résultats peuvent être analysés à l’aide de graphiques intégrés ou exportés vers Excel pour une analyse plus approfondie.
    - Microsoft Forms s’intègre également à d’autres applications Microsoft 365 telles que Teams, SharePoint et OneDrive.
- **Microsoft Information Protection API** 40775b29-2688-46b6-a3b5-b256bd04df9f (prod)
    
    L’**API Microsoft Information Protection (MIP)** est une interface de programmation qui permet aux développeurs d’utiliser les services de classification et de protection des données d’**Azure Information Protection (AIP)**. 
    
    Voici quelques points importants à savoir à son sujet:
    
    - **Objectif** :
        - L’API MIP permet aux développeurs de créer des applications qui utilisent les fonctionnalités de classification, d’étiquetage et de protection des données d’AIP.
        - Elle permet d’intégrer la classification et la protection des données dans des applications tierces, des flux de travail personnalisés et des solutions de sécurité.
    - **Fonctionnalités** :
        - **Classification des données** : L’API MIP permet de classer automatiquement les données en fonction de leur sensibilité (par exemple, public, confidentiel, secret).
        - **Étiquetage des données** : Elle permet d’appliquer des étiquettes de sensibilité aux documents et aux e-mails pour contrôler leur accès et leur utilisation.
        - **Protection des données** : L’API MIP offre des fonctionnalités de chiffrement, de droits d’accès et de suivi des activités sur les données.
    - **Intégration** :
        - L’API MIP peut être utilisée dans des applications, des scripts PowerShell, des flux de travail automatisés, etc.
        - Elle s’intègre avec d’autres services Microsoft tels que **Microsoft 365**, **Azure Information Protection** et **Microsoft Purview**.
    
    En résumé, l’API Microsoft Information Protection est un outil essentiel pour intégrer la classification et la protection des données dans vos applications et vos solutions personnalisées.
    
    [Microsoft Information Protection (MIP) SDK setup and configuration](https://learn.microsoft.com/en-us/information-protection/develop/setup-configure-mip)
    
- **Microsoft Information Protection Sync Service** 870c4f2e-85b6-4d43-bdda-6ed9a579b725
    
    Le Microsoft Information Protection Sync Service est un nouveau service qui facilite la gestion des étiquettes, des paramètres de protection et d’autres configurations liées à la protection des données dans **Azure Information Protection (AIP)**.
    
    Voici les points clés à connaître à son sujet :
    
    - **Objectif** :
        - Le **Microsoft Information Protection Sync Service** rend toutes les étiquettes, les paramètres de protection, les marquages de contenu et autres configurations liées à la protection des données disponibles pour les clients de l’**Azure Information Protection (AIP)**.
        - Ce service ne nécessite aucune configuration ni mise en place spécifique. Il gère simplement la mise à disposition de ces paramètres pour les clients utilisant l’**AIP SDK**.
    - **Intégration avec l’API MIP SDK** :
        - L’API MIP SDK permet aux développeurs de créer des applications qui utilisent les fonctionnalités de classification, d’étiquetage et de protection des données d’AIP.
        - Le **Microsoft Information Protection Sync Service** s’intègre avec l’API MIP SDK pour fournir ces fonctionnalités aux applications tierces.
    
    En résumé, le **Microsoft Information Protection Sync Service** simplifie la gestion des paramètres de protection des données pour les développeurs et les applications utilisant l’API MIP SDK.
    
    [Microsoft Information Protection (MIP) SDK setup and configuration](https://learn.microsoft.com/en-us/information-protection/develop/setup-configure-mip)
    
- **Microsoft Intune** 0000000a-0000-0000-c000-000000000000
    
    Microsoft Intune est une **plateforme de gestion des points de terminaison** qui vous permet de protéger et d’administrer tous vos points de terminaison à partir d’un seul endroit.
    
    Voici les points clés à connaître à son sujet :
    
    - **Objectif de Microsoft Intune** :
        - **Gestion des points de terminaison** : Microsoft Intune vous aide à gérer les appareils tels que les ordinateurs, les téléphones, les tablettes et les applications.
        - Il vous permet de configurer, de surveiller et de protéger ces appareils, qu’ils soient utilisés au sein de votre organisation ou en dehors.
    - **Fonctionnalités** :
        - **Gestion des appareils** : Vous pouvez configurer des politiques pour les appareils, gérer les mises à jour, surveiller l’état de la conformité et appliquer des mesures de sécurité.
        - **Gestion des applications** : Intune vous permet de déployer, de gérer et de sécuriser les applications sur les appareils.
        - **Protection des données** : Vous pouvez appliquer des politiques de protection des données, telles que le chiffrement des données et la prévention de la perte de données (DLP).
    - **Intégration avec d’autres services Microsoft** :
        - Microsoft Intune s’intègre avec d’autres services tels que **Azure Active Directory**, **Microsoft Defender ATP** et **Microsoft Cloud App Security**.
        - Il offre une solution complète pour la gestion des points de terminaison et la sécurité.
    
    En résumé, **Microsoft Intune** est un outil essentiel pour gérer, protéger et surveiller vos appareils et applications dans un environnement sécurisé.
    
    [Microsoft Intune—Endpoint Management | Microsoft Security](https://www.microsoft.com/en-us/security/business/Microsoft-Intune)
    
- **Microsoft Rights Management Services (RMS)** 00000012-0000-0000-c000-000000000000
    
    **Microsoft Rights Management Services (RMS)** est une technologie de protection basée sur le cloud utilisée par **Azure Information Protection**.
    
    Voici quelques points importants à savoir à son sujet:
    
    - **Protection des fichiers et des e-mails** : Azure RMS aide à protéger les fichiers et les e-mails sur plusieurs appareils, tels que les téléphones, les tablettes et les PC, en utilisant des politiques d’authentification, d’autorisation et de chiffrement.
    - **Protection persistante** : Lorsque vous partagez des données avec des partenaires ou les stockez dans un service de stockage cloud, la protection reste avec les données, même en dehors des limites de votre organisation.
    - **Conformité et meilleures pratiques** : Azure RMS peut être requis pour la conformité, les exigences de découverte légale ou les meilleures pratiques en matière de gestion de l’information.
    
    [What is Azure Rights Management? - AIP](https://learn.microsoft.com/en-us/azure/information-protection/what-is-azure-rms)
    
- **Microsoft Teams** cc15fd57-2c6c-4117-a88c-83b1d56b4bbe
    
    **Microsoft Teams** est la plateforme de collaboration et de communication au sein de **Microsoft 365**. 
    
    Voici ce que vous devez savoir à son sujet :
    
    - **Objectif de Microsoft Teams** :
        - **Hub de travail d’équipe** : Microsoft Teams est conçu pour faciliter la collaboration en équipe, la communication et la gestion des projets.
        - Il permet aux utilisateurs de communiquer en temps réel, de partager des fichiers, de planifier des réunions, d’utiliser des applications tierces et bien plus encore.
    - **Fonctionnalités** :
        - **Messagerie instantanée** : Les utilisateurs peuvent échanger des messages texte, des emojis et des fichiers.
        - **Appels audio et vidéo** : Teams permet des appels individuels et des réunions virtuelles avec partage d’écran.
        - **Réunions et webinaires** : Vous pouvez organiser des réunions en ligne avec des collègues ou des clients.
        - **Intégration d’applications tierces** : Teams s’intègre à d’autres services Microsoft et à des applications tierces pour une expérience complète.
    - **Utilisation** :
        - Les équipes peuvent créer des canaux pour organiser les discussions par projet, par équipe ou par sujet.
        - Les fichiers peuvent être partagés et édités en temps réel dans Teams.
        - L’intégration avec d’autres applications (comme Planner, OneNote, etc.) permet une gestion centralisée des tâches et des informations.
    
    En résumé, Microsoft Teams est un outil essentiel pour la collaboration en équipe, la communication et la gestion de projets au sein de votre organisation.
    
    [Microsoft Teams service description - Service Descriptions](https://learn.microsoft.com/en-us/office365/servicedescriptions/teams-service-description)
    
- **MS-PIM** 01fc33a7-78ba-4d2f-a4b7-768e336e890e
    
    **MS-PIM** est un service dans **Microsoft Entra ID** qui vous permet de gérer, contrôler et surveiller l’accès à des ressources importantes au sein de votre organisation. Ces ressources incluent celles dans **Microsoft Entra ID**, **Azure** et d’autres services en ligne Microsoft tels que **Microsoft 365** ou **Microsoft Intune**
    
    [What is Privileged Identity Management? - Microsoft Entra ID Governance](https://learn.microsoft.com/en-us/entra/id-governance/privileged-identity-management/pim-configure)
    
- **Office 365 Information Protection**  2f3f02c9-5679-4a5c-a605-0de55b07d135
    
    **Office 365 Information Protection** (anciennement **Microsoft Information Protection**) est un ensemble de capacités qui vous permet de découvrir, de classer 
    et de protéger les informations sensibles, où qu’elles se trouvent ou circulent.
    
    Voici un aperçu des fonctionnalités disponibles :
    
    1. **Connaître vos données** :
        - **Types d’informations sensibles** : Identifie les données sensibles à l’aide d’expressions régulières intégrées ou personnalisées.
        - **Classificateurs entraînables** : Identifie les données sensibles en utilisant des exemples plutôt que des éléments spécifiques dans l’élément.
        - **Classification des données** : Affiche les éléments de votre organisation ayant une étiquette de sensibilité, une étiquette de rétention ou une classification.
    2. **Protéger vos données** :
        - **Étiquettes de sensibilité** : Solution unique pour protéger vos données lorsqu’elles circulent à l’intérieur et à l’extérieur de votre organisation.
        - **Chiffrement des documents et des e-mails** : Protège vos documents et e-mails.
        - **Protection des éléments du calendrier, des réunions Teams et des discussions**
    
    [Microsoft Purview Information Protection](https://learn.microsoft.com/en-us/purview/information-protection)
    
    [Azure Information Protection service description - Service Descriptions](https://learn.microsoft.com/en-us/office365/servicedescriptions/azure-information-protection)
    
- **Office 365 SharePoint Online** 00000003-0000-0ff1-ce00-000000000000
    
    **SharePoint Online** est une composante essentielle de **Microsoft 365**. 
    
    Voici ce que vous devez savoir à son sujet :
    
    - **Qu’est-ce que SharePoint Online ?**
        - **SharePoint Online** est une plateforme de collaboration et de gestion de contenu basée sur le cloud.
        - Elle permet aux utilisateurs de créer, de stocker, de partager et de collaborer sur des documents, des listes, des bibliothèques et des sites web.
    - **Fonctionnalités clés de SharePoint Online** :
        - **Sites d’équipe** : Créez des sites d’équipe pour collaborer avec vos collègues sur des projets, des documents et des tâches.
        - **Bibliothèques de documents** : Stockez et gérez vos fichiers dans des bibliothèques de documents.
        - **Listes** : Créez des listes pour suivre des informations telles que des tâches, des problèmes ou des contacts.
        - **Pages de communication** : Créez des pages pour diffuser des informations importantes à l’ensemble de l’organisation.
        - **Intégration avec d’autres services** : SharePoint Online s’intègre avec d’autres services Microsoft tels que Teams, OneDrive et Power Automate.
    - **Utilisation** :
        - Les équipes peuvent créer des sites d’équipe pour organiser leurs documents et leurs discussions.
        - Les bibliothèques de documents permettent de stocker et de gérer les fichiers de manière centralisée.
        - Les listes sont utiles pour suivre des éléments tels que les tâches, les problèmes ou les demandes.
    
    En résumé, **SharePoint Online** est un outil essentiel pour la collaboration, la gestion de contenu et la communication au sein de votre organisation.
    
    [What is SharePoint? - Microsoft Support](https://support.microsoft.com/en-us/office/what-is-sharepoint-97b915e6-651b-43b2-827d-fb25777f446f)
    
- **O365 LinkedIn Connection** f569b9c7-be15-4e87-86f7-87d30d02090b
    
    La **connexion entre Office 365 (O365)** et **LinkedIn** offre une intégration puissante entre ces deux plateformes.
    
    Voici quelques points clés à retenir :
    
    1. **Profil LinkedIn dans Outlook** : Lorsque vous connectez votre compte LinkedIn à O365, vous pouvez afficher des informations sur vos contacts LinkedIn directement dans Outlook. Cela vous permet d’en savoir plus sur les personnes avec lesquelles vous
    communiquez par e-mail.
    2. **Recherche de contacts** : Vous pouvez rechercher des contacts LinkedIn directement depuis O365. Cela facilite la recherche de personnes avec lesquelles vous souhaitez vous connecter professionnellement.
    3. **Partage de documents** : Lorsque vous partagez des documents via OneDrive ou SharePoint dans O365, vous pouvez également les partager avec vos connexions LinkedIn. Cela peut être utile pour collaborer avec des collègues ou des partenaires professionnels.
    4. **Opportunités professionnelles** : L’intégration entre O365 et LinkedIn vous permet de découvrir des opportunités professionnelles pertinentes. Par exemple, vous pouvez voir des offres d’emploi recommandées en fonction de votre profil LinkedIn.
    5. **Mises à jour de réseau** : Vous recevrez des notifications sur les mises à jour de votre réseau LinkedIn directement dans O365. Cela vous permet de rester informé des activités de vos contacts professionnels.
    
    En somme, la connexion entre O365 et LinkedIn renforce votre productivité, facilite la collaboration et vous permet de tirer parti de votre réseau professionnel existant.
    
- **Office 365 Exchange Online** 00000002-0000-0ff1-ce00-000000000000
    
    **Exchange Online** est un service d’e-mail hébergé qui offre une sécurité avancée, une fiabilité et un contrôle pour vos besoins en matière d’e-mails professionnels.
    
- **Office Delve** 94c63fef-13a3-47bc-8074-75af8c65887a
    
    **Office Delve** est une application web qui vous permet de découvrir et d'organiser les informations susceptibles de vous intéresser au sein de **Microsoft 365**.
    
    Voici ce que vous devez savoir à son sujet :
    
    - **Découverte personnalisée** :
        - Delve utilise l'intelligence artificielle pour vous présenter des documents, des personnes et des informations pertinentes en fonction de votre activité et de vos interactions.
        - Vous pouvez voir les documents sur lesquels travaillent vos collègues, explorer les profils des membres de votre organisation et découvrir du contenu lié à vos centres d'intérêt.
    - **Gestion de profil** :
        - Vous pouvez afficher et mettre à jour votre propre profil dans Delve.
        - Delve ne modifie jamais les autorisations, vous ne verrez donc que les documents auxquels vous avez déjà accès. Les autres personnes ne verront pas vos documents privés.
    - **Accès à Delve** :
        - Pour accéder à Delve, sélectionnez l'icône Delve dans le lanceur d'applications de **Microsoft 365**, ou ouvrez delve.office.com dans votre navigateur.
        - Connectez-vous avec votre compte professionnel ou scolaire si nécessaire.
    
    En résumé, Office Delve est un outil essentiel pour découvrir et organiser les informations pertinentes au sein de votre organisation. 😊
    
    [Office Delve—discover exactly what you need, when you need it | Microsoft 365 Blog](https://www.microsoft.com/en-us/microsoft-365/blog/2015/03/16/office-delve-discover-exactly-what-you-need-when-you-need-it/)
    
- **Power BI Service** 00000009-0000-0000-c000-000000000000
    
    **Power BI Service** est une plateforme de **visualisation de données** basée sur le cloud qui vous permet de créer, partager et collaborer sur des rapports et des tableaux de bord interactifs.
    
    Voici les points clés à connaître à son sujet :
    
    - **Création de rapports et de tableaux de bord** :
        - **Power BI Service** vous permet de créer des rapports à partir de différentes sources de données (bases de données, fichiers, services cloud, etc.).
        - Vous pouvez concevoir des tableaux de bord interactifs avec des graphiques, des cartes, des filtres et des mesures.
    - **Partage et collaboration** :
        - Vous pouvez partager vos rapports et tableaux de bord avec d’autres utilisateurs de votre organisation.
        - Les utilisateurs peuvent afficher, explorer et interagir avec les données en temps réel.
    - **Intégration avec d’autres services** :
        - **Power BI Service** s’intègre avec d’autres services Microsoft tels que **Azure**, **SharePoint**, **Teams** et **Excel**.
        - Vous pouvez également publier vos rapports sur le web ou les intégrer dans des applications tierces.
    
    En résumé, **Power BI Service** est un outil essentiel pour créer, partager et collaborer sur des visualisations de données dans un environnement basé sur le cloud.
    
    [What is the Power BI service? - Power BI](https://learn.microsoft.com/en-us/power-bi/fundamentals/power-bi-service-overview)
    
- **PowerApps Service** 475226c6-020e-4fb2-8a90-7a972cbfc1d4 (prod)
    
    **PowerApps Service** est une **plateforme de développement d’applications** qui permet aux utilisateurs de créer des applications personnalisées sans nécessiter une expertise en programmation avancée.
    
    Voici les points clés à connaître à son sujet :
    
    - **Création d’applications personnalisées** :
        - **PowerApps Service** permet aux utilisateurs de créer des applications pour répondre à des besoins spécifiques de leur organisation.
        - Vous pouvez concevoir des applications pour les ordinateurs, les tablettes et les téléphones, sans écrire beaucoup de code manuellement.
    - **Fonctionnalités** :
        - **Environnement de développement visuel** : **PowerApps** offre un environnement de développement basé sur le glisser-déposer, où vous pouvez ajouter des contrôles, des formulaires, des graphiques et des connexions à des sources de données.
        - **Intégration avec d’autres services** : Vous pouvez connecter vos applications à des services tels que SharePoint, OneDrive, SQL Server, etc.
        - **Publication et partage d’applications** : Une fois que vous avez créé une application, vous pouvez la publier et la partager avec d’autres utilisateurs de votre organisation.
    - **Utilisation** :
        - Les utilisateurs peuvent créer des applications pour automatiser des processus, collecter des données, afficher des rapports, etc.
        - PowerApps Service s’intègre également avec d’autres services Microsoft tels que Power BI, Power Automate et Azure.
    
    En résumé, **PowerApps Service** est un outil essentiel pour créer des applications personnalisées sans nécessiter de compétences en programmation avancée.
    
    [What is Power Apps? - Power Apps](https://learn.microsoft.com/en-us/power-apps/powerapps-overview)
    
- **ProjectWorkManagement** 09abbdfd-ed23-44ee-a2d9-a627aa1c90f3
    
    **ProjectWorkManagement** est un service qui permet de gérer, contrôler et surveiller l’accès à des ressources importantes au sein de votre organisation. Ces ressources incluent celles dans **Microsoft Entra ID**[,](https://www.projectmanagement.com/) **Azure** [](https://www.projectmanagement.com/)et d’autres services en ligne Microsoft tels que **Microsoft 365** ou **Microsoft Intune**
    
    [Redirecting](https://answers.microsoft.com/en-us/msoffice/forum/all/application-projectworkmanagement-is-disabled/cd90fbe4-a8fc-4a2f-a0f7-34077dffa088)
    
- **Sway** 905fcf26-4eb7-48a0-9ff0-8dcc7194b5ba
    
    **Sway** est une application de **Microsoft Office** qui permet de créer et de partager des rapports, des présentations, des histoires personnelles et bien plus encore. 
    
    Voici quelques points importants à savoir à son sujet :
    
    - **Création interactive** :
        - Avec Sway, vous pouvez ajouter du texte, des images, des vidéos et d’autres contenus pour créer des présentations interactives.
        - Il est facile de personnaliser le design et la mise en page de votre contenu.
    - **Partage et accessibilité** :
        - Vous pouvez partager vos créations avec d’autres personnes via le Web, sans qu’elles aient besoin de s’inscrire ou de télécharger quoi que ce soit.
        - Sway est gratuit pour les utilisateurs disposant d’un compte Microsoft (Hotmail, Live ou Outlook.com).
    - **Scénarios d’utilisation** :
        - Vous pouvez créer des rapports, des présentations, des newsletters, des histoires personnelles, des albums photo, etc.
        - Sway offre une alternative aux modèles de présentation traditionnels et permet de présenter l’information de manière moderne et interactive.
    
    Pour commencer à utiliser Sway, rendez-vous sur sway.office.com et connectez-vous avec votre compte Microsoft.
    
    [Getting Started with Sway - Microsoft Support](https://support.microsoft.com/en-us/office/getting-started-with-sway-2076c468-63f4-4a89-ae5f-424796714a8a)
    
- **Viva Engage** 00000005-0000-0ff1-ce00-000000000000
    
    **Viva Engage** est une application de **Microsoft Office** qui permet de créer, partager et collaborer sur des rapports, des présentations, des histoires personnelles et bien plus encore. Voici ce que vous devez savoir à son sujet :
    
    - **Découverte personnalisée** :
        - Avec **Viva Engage**, vous pouvez ajouter du texte, des images, des vidéos et d’autres contenus pour créer des présentations interactives.
        - Il est facile de personnaliser le design et la mise en page de votre contenu.
    - **Partage et accessibilité** :
        - Vous pouvez partager vos créations avec d’autres personnes via le Web, sans qu’elles aient besoin de s’inscrire ou de télécharger quoi que ce soit.
        - **Viva Engage** est gratuit pour les utilisateurs disposant d’un compte Microsoft (Hotmail, Live ou Outlook.com).
    - **Scénarios d’utilisation** :
        - Vous pouvez créer des rapports, des présentations, des newsletters, des histoires personnelles, des albums photo, etc.
        - **Viva Engage** offre une alternative aux modèles de présentation traditionnels et permet de présenter l’information de manière moderne et interactive.
    
    Pour commencer à utiliser **Viva Engage**, rendez-vous sur sway.office.com et connectez-vous avec votre compte Microsoft.
    
    [Introducing Microsoft Viva Engage](https://learn.microsoft.com/en-us/viva/engage/overview)
    
- **Windows Azure Service Management API** 797f4846-ba00-4fd7-ba43-dac1f8f63013 (prod)
    
    L’**API de gestion des services Windows Azure** est une interface de programmation REST qui permet aux utilisateurs de gérer leurs déploiements, leurs services hébergés et leurs comptes de stockage dans **Windows Azure**.
    
    Voici quelques détails importants à connaître :
    
    - **Fonctionnalités** :
        - **Déploiements** : Vous pouvez afficher, créer, supprimer, échanger, modifier les paramètres de configuration, changer le nombre d’instances et mettre à jour les déploiements.
        - **Propriétés des services hébergés, des comptes de stockage et des groupes d’affinité** : Vous pouvez lister et afficher les propriétés de ces ressources.
    - **Authentification** :
        - L’API utilise des certificats clients X509 pour l’authentification.
        - Les utilisateurs peuvent télécharger un certificat X509 valide au format *.cer* sur le portail des développeurs Windows Azure et l’utiliser pour les requêtes API.
    - **Outils associés** :
        - **csmanage.exe** : Un outil pratique pour interagir avec cette API et gérer vos déploiements.
        - **Bibliothèques clientes .NET** : Des bibliothèques seront bientôt publiées pour simplifier l’utilisation de l’API.
    
    En résumé, l’API de gestion des services Windows Azure est un moyen essentiel pour gérer vos ressources dans Windows Azure. N’hésitez pas à explorer cette API et à nous faire part de vos commentaires !
    
    [Azure REST API reference documentation](https://learn.microsoft.com/en-us/rest/api/azure/)
    
    [Azure API Management - Overview and key concepts](https://learn.microsoft.com/en-us/azure/api-management/api-management-key-concepts)
    
- **Microsoft Store for Business** 45a330b1-b1ec-4cc1-9161-9f03992aa49f
    
    **Microsoft Store for Business** et **Microsoft Store for Education** sont des plateformes conçues pour les organisations et les établissements scolaires. Elles offrent aux décideurs informatiques et aux administrateurs une manière flexible de trouver, acquérir, gérer et distribuer des applications gratuites et payantes sur des appareils Windows 10 en volume1.
    
    Voici quelques points clés à retenir :
    
    1. **Objectif** : Ces plateformes sont conçues pour les entreprises et les écoles. Elles permettent de trouver, acquérir et distribuer des applications sur des appareils Windows 10 en volume.
    2. **Gestion centralisée** : Microsoft Store for Business offre une gestion centralisée pour l’inventaire, la facturation, les autorisations et l’historique des commandes.
    3. **Acquisition en vrac** : Vous pouvez acquérir des applications en volume depuis Microsoft Store for Business.
    4. **Compatibilité avec les comptes professionnels et scolaires** : Vous pouvez utiliser des comptes professionnels ou scolaires existants pour accéder à ces plateformes.
    5. **Distribution flexible** : Vous pouvez attribuer directement des applications à des individus ou des équipes, les publier sur des pages privées dans Microsoft Store ou les intégrer à des solutions de gestion pour plus d’options.
    
    Il est important de noter que **Microsoft Store for Business et Microsoft Store for Education ne sont pas pris en charge sur Windows 11**1. De plus, les clients dans l’environnement Office 365 GCC ou éligibles à des tarifs gouvernementaux ne peuvent pas utiliser Microsoft Store for Business
    
    [Microsoft Store for Business and Microsoft Store for Education overview (Windows 10)](https://learn.microsoft.com/en-us/microsoft-store/microsoft-store-for-business-overview)
    
- **Portfolio** f53895d3-095d-408f-8e93-8f94b391404e
    
    Un **portfolio** est une collection d’investissements financiers tels que des actions, 
    des obligations, des matières premières, de la trésorerie et des équivalents de trésorerie, y compris les fonds communs de placement et les fonds négociés en bourse (ETF)1.
    
    Voici quelques points clés à retenir :
    
    1. **Composition** : Un portfolio peut inclure divers types d’actifs financiers, chacun ayant un niveau de risque et un rendement potentiel différents.
    
    1. **Diversification** : La diversification d’un portfolio  vise à répartir le risque en investissant dans différents types d’actifs. Cela permet de limiter l’impact d’une mauvaise performance 
    d’un seul investissement.
    
    1. **Allocation d’actifs** : La manière dont vous répartissez vos investissements entre actions, obligations, liquidités, etc., est appelée allocation d’actifs. Elle dépend de votre tolérance au
     risque, de vos objectifs financiers et de votre horizon temporel.
    
    1. **Gestion du portfolio** : La gestion d’un portfolio implique de surveiller les performances des investissements, d’ajuster l’allocation d’actifs au fil du temps et de prendre des décisions 
    éclairées pour maximiser les rendements.
    
    En dehors du contexte financier, un **portfolio** peut également désigner un ensemble de projets, de créations artistiques ou de travaux professionnels. Par exemple, les designers, les artistes et les professionnels du marketing utilisent souvent un portfolio pour présenter leurs réalisations, leurs compétences et leur expérience23. C’est un moyen efficace de montrer au monde ce que vous pouvez faire !
    
- **Microsoft Graph Command Line Tools** 14d82eec-204b-4c2f-b7e8-296a70dab67e
    
    La **ligne de commande Microsoft Graph (CLI)** est un outil puissant qui vous permet d’interagir avec l’**API Microsoft Graph** depuis la ligne de commande.
    
    Voici quelques points clés à retenir :
    
    1. **Accès à l’API** : La CLI Microsoft Graph permet d’accéder à toutes les API Microsoft Graph, y compris celles des services tels que SharePoint, Exchange et Outlook. Elle utilise un point de terminaison unique et un jeton d’accès pour une intégration transparente.
    2. **Compatibilité multiplateforme** : Que vous utilisiez Windows, macOS ou Linux, la CLI Microsoft Graph fonctionne sur toutes les plateformes.
    3. **Authentification moderne** : Elle prend en charge la **bibliothèque d’authentification Microsoft (MSAL)**, améliorant la sécurité lors de l’authentification.
    4. **Privilège minimal** : Les autorisations de la CLI Microsoft Graph ne sont pas pré-autorisées ; les utilisateurs demandent des autorisations d’application en fonction de leurs besoins.
    5. **Open Source** : La CLI est open source, permettant aux équipes de développement et à la communauté de contribuer et de créer d’excellentes expériences en ligne de commande.
    
    [Get started with the Microsoft Graph command-line interface (CLI) - Microsoft Graph](https://learn.microsoft.com/en-us/graph/cli/get-started)
    
    [Microsoft Graph command-line interface (CLI) overview - Microsoft Graph](https://learn.microsoft.com/en-us/graph/cli/overview)
    
-