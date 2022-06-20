/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DELETE FROM domains;
INSERT INTO `domains` VALUES 
(1,'27k1','ISO 27001', CURRENT_TIMESTAMP(), NULL),
(5,'A5',' Mesures organisationnelles',CURRENT_TIMESTAMP(), NULL),
(6,'A6','Mesures liées aux personnes',CURRENT_TIMESTAMP(), NULL),
(7,'A7','Contrôles physiques',CURRENT_TIMESTAMP(), NULL),
(8,'A8','Mesures technologiques',CURRENT_TIMESTAMP(), NULL);

--
-- Dumping data for table `measures`
--

DELETE FROM measures;
INSERT INTO `measures` (domain_id, clause, name, ref, tags1, tags2, tags3, tags4, tags5) VALUES
(1,'4.x','Compréhension de l\'organisation et de son contexte','','','','','',''),
(1,'5.x','Leadership','','','','','',''),
(1,'6.x','Planification','','','','','',''),
(1,'7.x','Support','','','','','',''),
(1,'8.x','Fonctionnement','','','','','',''),
(1,'9.2','Audit Interne','','','','','',''),
(1,'9.3','Revue de Direction','','','','','',''),
(1,'10.1','Non-conformité et actions correctives','','','','','',''),

(5,"5.01","Politiques de sécurité de l'information","05.1.1, 05.1.2","#Preventive","#Confidentiality #Integrity #Availability","#Identify","#Governance","#Governance_and_Ecosystem #Resilience"),
(5,"5.02","Fonctions et responsabilités liées à la sécurité de l'information","06.1.1","#Preventive","#Confidentiality #Integrity #Availability","#Identify","#Governance","#Governance_and_Ecosystem #Protection #Resilience"),
(5,"5.03","Séparation des tâches","06.1.2","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Governance #Identity_and_access_management","#Governance_and_Ecosystem"),
(5,"5.04","Responsabilités de la direction","07.2.1","#Preventive","#Confidentiality #Integrity #Availability","#Identify","#Governance","#Governance_and_Ecosystem"),
(5,"5.05","Relations avec les autorités","06.1.3","#Preventive #Corrective","#Confidentiality #Integrity #Availability","#Identify #Protect #Respond #Recover","#Governance","#Defence #Resilience"),
(5,"5.06","Relations avec des groupes de travail spécialisés","06.1.4","#Preventive #Corrective","#Confidentiality #Integrity #Availability","#Protect #Respond #Recover","#Governance","#Defence"),
(5,"5.07","Intelligence des menaces","New","#Preventive #Detective #Corrective","#Confidentiality #Integrity #Availability","#Identify #Detect #Respond","#Threat_and_vulnerability_management","#Defence #Resilience"),
(5,"5.08","Sécurité de l'information dans la gestion de projet","06.1.5, 14.1.1","#Preventive","#Confidentiality #Integrity #Availability","#Identify #Protect","#Governance","#Governance_and_Ecosystem #Protection"),
(5,"5.09","Inventaire des informations et des autres actifs associés","08.1.1, 08.1.2","#Preventive","#Confidentiality #Integrity #Availability","#Identify","#Asset_management","#Governance_and_Ecosystem #Protection"),
(5,"5.10","Utilisation correcte de l'information et des autres actifs associés","08.1.3, 08.2.3","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Asset_management #Information_ protection","#Governance_and_Ecosystem #Protection"),
(5,"5.11","Restitution des actifs","08.1.4","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Asset_management","#Protection"),
(5,"5.12","Classification de l'information","08.2.1","#Preventive","#Confidentiality #Integrity #Availability","#Identify","#Information_protection","#Protection #Defence"),
(5,"5.13","Marquage des informations","08.2.2","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Information_protection","#Defence #Protection"),
(5,"5.14","Transfert de l'information","13.2.1, 13.2.2, 13.2.3","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Asset_management #Information_ protection","#Protection"),
(5,"5.15","Contrôle d'accès","09.1.1, 09.1.2","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Identity_and_access_management","#Protection"),
(5,"5.16","Gestion des identités","09.2.1","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Identity_and_access_management","#Protection"),
(5,"5.17","Informations d'authentification","09.2.4, 09.3.1, 09.4.3","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Identity_and_access_management","#Protection"),
(5,"5.18","Droits d'accès","09.2.2, 09.2.5, 09.2.6","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Identity_and_access_management","#Protection"),
(5,"5.19","Sécurité de l'information dans les relations avec les fournisseurs","15.1.1","#Preventive","#Confidentiality #Integrity #Availability","#Identify","#Supplier_relationships_security","#Governance_and_Ecosystem #Protection"),
(5,"5.20","Prise en compte de la sécurité de l'information dans les accords conclus avec les fournisseurs","15.1.2","#Preventive","#Confidentiality #Integrity #Availability","#Identify","#Supplier_relationships_security","#Governance_and_Ecosystem #Protection"),
(5,"5.21","Management de la sécurité de l'information dans la chaîne d'approvisionnement TIC","15.1.3","#Preventive","#Confidentiality #Integrity #Availability","#Identify","#Supplier_relationships_security","#Governance_and_Ecosystem #Protection"),
(5,"5.22","Suivi, revue et gestion des changements des services fournisseurs","15.2.1, 15.2.2","#Preventive","#Confidentiality #Integrity #Availability","#Identify","#Supplier_relationships_security #Information_security_assurance","#Governance_and_Ecosystem #Protection #Defence"),
(5,"5.23","Sécurité de l'information dans l'utilisation de services en nuage","New","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Supplier_relationships_security","#Governance_and_Ecosystem #Protection"),
(5,"5.24","Planification et préparation de la gestion des incidents liés à la sécurité de l'information","16.1.1","#Corrective","#Confidentiality #Integrity #Availability","#Respond #Recover","#Governance #Information_security_event_management","#Defence"),
(5,"5.25","Appréciation des événements liés à la sécurité de l'information et prise de décision","16.1.4","#Detective","#Confidentiality #Integrity #Availability","#Detect #Respond","#Information_security_event_management","#Defence"),
(5,"5.26","Réponse aux incidents liés à la sécurité de l'information","16.1.5","#Corrective","#Confidentiality #Integrity #Availability","#Respond #Recover","#Information_security_event_management","#Defence"),
(5,"5.27","Tirer des enseignements des incidents liés à la sécurité de l'information","16.1.6","#Preventive","#Confidentiality #Integrity #Availability","#Identify #Protect","#Information_security_event_management","#Defence"),
(5,"5.28","Recueil de preuves","16.1.7","#Corrective","#Confidentiality #Integrity #Availability","#Detect #Respond","#Information_security_event_management","#Defence"),
(5,"5.29","Sécurité de l'information durant une perturbation","17.1.1, 17.1.2, 17.1.3","#Preventive #Corrective","#Confidentiality #Integrity #Availability","#Protect #Re- spond","#Continuity","#Protection #Resilience"),
(5,"5.30","Préparation des TIC pour la continuité d'activité","New","#Corrective","#Availability","#Respond","#Continuity","#Resilience"),
(5,"5.31","Identification des exigences légales, statutaires, réglementaires et contractuelles","18.1.1, 18.1.5","#Preventive","#Confidentiality #Integrity #Availability","#Identify","#Legal_and_compliance","#Governance_and_Ecosystem #Protection"),
(5,"5.32","Droits de propriété intellectuelle","18.1.2","#Preventive","#Confidentiality #Integrity #Availability","#Identify","#Legal_and_compliance","#Governance_and_Ecosystem"),
(5,"5.33","Protection des enregistrements","18.1.3","#Preventive","#Confidentiality #Integrity #Availability","#Identify #Protect","#Legal_and_compliance #Asset_management #Information_ protection","#Defence"),
(5,"5.34","Vie privée et protection des DCP","18.1.4","#Preventive","#Confidentiality #Integrity #Availability","#Identify #Protect","#Information_ protection #Legal_and_compliance","#Protection"),
(5,"5.35","Revue indépendante de la sécurité de l'information","18.2.1","#Preventive #Corrective","#Confidentiality #Integrity #Availability","#Identify #Protect","#Information_security_assurance","#Governance_and_Ecosystem"),
(5,"5.36","Conformité aux politiques et normes de sécurité de l'information","18.2.2, 18.2.3","#Preventive","#Confidentiality #Integrity #Availability","#Identify #Protect","#Legal_and_compliance #Information_security_assurance","#Governance_and_Ecosystem"),
(5,"5.37","Procédures d'exploitation documentées","12.1.1","#Preventive #Corrective","#Confidentiality #Integrity #Availability","#Protect #Re- cover","#Asset_management #Physical_security #System_and_network_security #Application_security #Secure_configuration #Identity_and_access_management #Threat_and_vulnerability_management #Continuity #Information_security_event_management","#Governance_and_Ecosystem #Protection #Defence"),
(6,"6.01","Présélection","07.1.1","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Human_resource_security","#Governance_and_Ecosystem"),
(6,"6.02","Conditions générales d'embauche","07.1.2","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Human_resource_security","#Governance_and_Ecosystem"),
(6,"6.03","Sensibilisation, apprentissage et formation à la sécurité de l'information","07.2.2","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Human_resource_security","#Governance_and_Ecosystem"),
(6,"6.04","Processus disciplinaire","07.2.3","#Preventive #Corrective","#Confidentiality #Integrity #Availability","#Protect #Re- spond","#Human_resource_security","#Governance_and_Ecosystem"),
(6,"6.05","Responsabilités consécutivement à la fin ou à la modification du contrat de tr","07.3.1","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Human_resource_security #Asset_ management","#Governance_and_Ecosystem"),
(6,"6.06","Engagements de confidentialité ou de non-divulgation","13.2.4","#Preventive","#Confidentiality","#Protect","#Human_resource_security #Information_protection #Supplier_relationships_security","#Governance_and_Ecosystem"),
(6,"6.07","Travail à distance","06.2.2","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Asset_management #Information_ protection #Physical_security #System_and_network_security","#Protection"),
(6,"6.08","Signalement des événements liés à la sécurité de l'information","16.1.2, 16.1.3","#Detective","#Confidentiality #Integrity #Availability","#Detect","#Information_security_event_management","#Defence"),
(7,"7.01","Périmètre de sécurité physique","11.1.1","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Physical_security","#Protection"),
(7,"7.02","Contrôles physiques des accès","11.1.2, 11.1.6","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Physical_security #Iden- tity_and_Ac- cess_Manage- ment","#Protection"),
(7,"7.03","Sécurisation des bureaux, des salles et des équipements","11.1.3","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Physical_security #Asset_ management","#Protection"),
(7,"7.04","Surveillance de la sécurité physique","New","#Preventive #Detective","#Confidentiality #Integrity #Availability","#Protect #Detect","#Physical_security","#Protection #Defence"),
(7,"7.05","Protection contre les menaces physiques et environnementales","11.1.4","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Physical_security","#Protection"),
(7,"7.06","Travail dans les zones sécurisées","11.1.5","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Physical_security","#Protection"),
(7,"7.07","Bureau propre et écran vide","11.2.9","#Preventive","#Confidentiality","#Protect","#Physical_security","#Protection"),
(7,"7.08","Emplacement et protection du matériel","11.2.1","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Physical_security #Asset_ management","#Protection"),
(7,"7.09","Sécurité des actifs hors des locaux","11.2.6","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Physical_security #Asset_ management","#Protection"),
(7,"7.10","Supports de stockage","08.3.1, 08.3.2, 08.3.3","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Physical_security #Asset_ management","#Protection"),
(7,"7.11","Services généraux","11.2.2","#Preventive #Detective","#Integrity #Availability","#Protect #Detect","#Physical_security","#Protection"),
(7,"7.12","Sécurité du câblage","11.2.3","#Preventive","#Confidentiality #Availability","#Protect","#Physical_security","#Protection"),
(7,"7.13","Maintenance du matériel","11.2.4","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Physical_security #Asset_ management","#Protection #Resilience"),
(7,"7.14","Mise au rebut ou recyclage sécurisé(e) du matériel","11.2.7","#Preventive","#Confidentiality","#Protect","#Physical_security #Asset_ management","#Protection"),
(8,"8.01","Terminaux utilisateurs","06.2.1, 11.2.8","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Asset_management #Information_ protection","#Protection"),
(8,"8.02","Privilèges d'accès","09.2.3","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Identity_and_access_management","#Protection"),
(8,"8.03","Restriction d'accès à l'information","09.4.1","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Identity_and_access_management","#Protection"),
(8,"8.04","Accès au code source","09.4.5","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Identity_and_access_management #Application_security #Secure_configuration","#Protection"),
(8,"8.05","Authentification sécurisée","09.4.2","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Identity_and_access_management","#Protection"),
(8,"8.06","Dimensionnement","12.1.3","#Preventive #Detective","#Integrity #Availability","#Identify #Protect #Detect","#Continuity","#Governance_and_Ecosystem #Protection"),
(8,"8.07","Protection contre les programmes malveillants","12.2.1","#Preventive #Detective #Corrective","#Confidentiality #Integrity #Availability","#Protect #Detect","#System_and_network_security #Information_protection","#Protection #Defence"),
(8,"8.08","Gestion des vulnérabilités techniques","12.6.1, 18.2.3","#Preventive","#Confidentiality #Integrity #Availability","#Identify #Protect","#Threat_and_vulnerability_management","#Governance_and_Ecosystem #Protection #Defence"),
(8,"8.09","Gestion de la configuration","New","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Secure_configuration","#Protection"),
(8,"8.10","Suppression d'information","New","#Preventive","#Confidentiality","#Protect","#Information_ protection #Legal_and_compliance","#Protection"),
(8,"8.11","Masquage des données","New","#Preventive","#Confidentiality","#Protect","#Information_protection","#Protection"),
(8,"8.12","Prévention de la fuite de données","New","#Preventive #Detective","#Confidentiality","#Protect #Detect","#Information_protection","#Protection #Defence"),
(8,"8.13","Sauvegarde des informations","12.3.1","#Corrective","#Integrity #Availability","#Recover","#Continuity","#Protection"),
(8,"8.14","Redondance des moyens de traitement de l'information","17.2.1","#Preventive","#Availability","#Protect","#Continuity #Asset_management","#Protection #Resilience"),
(8,"8.15","Journalisation","12.4.1, 12.4.2, 12.4.3","#Detective","#Confidentiality #Integrity #Availability","#Detect","#Information_security_event_management","#Protection #Defence"),
(8,"8.16","Activités de surveillance","New","#Detective #Corrective","#Confidentiality #Integrity #Availability","#Detect #Respond","#Information_security_event_management","#Defence"),
(8,"8.17","Synchronisation des horloges","12.4.4","#Detective","#Integrity","#Protect #Detect","#Information_security_event_management","#Protection #Defence"),
(8,"8.18","Utilisation de programmes utilitaires à privilèges","09.4.4","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#System_and_network_security #Secure_configuration #Application_security","#Protection"),
(8,"8.19","Installation de logiciels sur des systèmes en exploitation","12.5.1, 12.6.2","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Secure_configuration #Application_security","#Protection"),
(8,"8.20","Mesures liées aux réseaux","13.1.1","#Preventive #Detective","#Confidentiality #Integrity #Availability","#Protect #Detect","#System_and_network_security","#Protection"),
(8,"8.21","Sécurité des services en réseau","13.1.2","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#System_and_network_security","#Protection"),
(8,"8.22","Filtrage Internet","New","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#System_and_network_security","#Protection"),
(8,"8.23","Cloisonnement des réseaux","13.1.3","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#System_and_network_security","#Protection"),
(8,"8.24","Utilisation de la cryptographie","10.1.1, 10.1.2","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Secure_configuration","#Protection"),
(8,"8.25","Cycle de vie de développement sécurisé","14.2.1","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Application_security #System_and_network_security","#Protection"),
(8,"8.26","Exigences de sécurité des applications","14.1.2, 14.1.3","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Application_security #System_and_network_security","#Protection #Defence"),
(8,"8.27","Principes d'ingénierie et d'architecture système sécurisée","14.2.5","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Application_security #System_and_network_security","#Protection"),
(8,"8.28","Codage sécurisé","New","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Application_security #System_and_network_security","#Protection"),
(8,"8.29","Tests de sécurité dans le développement et l'acceptation","14.2.8, 14.2.9","#Preventive","#Confidentiality #Integrity #Availability","#Identify","#Application_security #Information_security_assurance #System_and_network_security","#Protection"),
(8,"8.30","Développement externalisé","14.2.7","#Preventive #Detective","#Confidentiality #Integrity #Availability","#Identify #Protect #Detect","#System_and_network_security #Application_security #Supplier_relationships_security","#Governance_and_Ecosystem #Protection"),
(8,"8.31","Séparation des environnements de développement, de test et de production","12.1.4, 14.2.6","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Application_security #System_and_network_security","#Protection"),
(8,"8.32","Gestion des changements","12.1.2, 14.2.2, 14.2.3, 14.2.4","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#Application_security #System_and_network_security","#Protection"),
(8,"8.33","Informations relatives aux tests","14.3.1","#Preventive","#Confidentiality #Integrity","#Protect","#Information_protection","#Protection"),
(8,"8.34","Protection des systèmes d'information en cours d'audit et de test","12.7.1","#Preventive","#Confidentiality #Integrity #Availability","#Protect","#System_and_network_security #Information_protec- tion","#Governance_and_Ecosystem #Protection");



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



