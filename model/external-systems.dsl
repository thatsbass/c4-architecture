# Systèmes externes utilisés par la plateforme
paymentSystem = softwareSystem "Système de Paiement" "Wave / Orange Money pour le traitement des paiements" "External System"
emailSystem = softwareSystem "Service Email" "SendGrid/Mailgun pour l'envoi d'emails" "External System"
smsSystem = softwareSystem "Service SMS" "Twilio pour les notifications SMS" "External System"
# A revoir
storageSystem = softwareSystem "Stockage Cloud" "AWS S3/CloudFlare pour les fichiers et médias" "External System"
versionControl = softwareSystem "Versioning" "Contrôle de version du code source" "BitBucket"