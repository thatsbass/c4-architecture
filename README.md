# Architecture C4 - Plateforme de Cynoia Space

## Description
Architecture d'une plateforme de l'espace Cynoia multi-tenant avec PWA, chat temps réel, paiements et système de feedback.

## Structure des fichiers
- `workspace.dsl` : Fichier principal
- `model/` : Définition du modèle architectural
- `views/` : Définition des vues et diagrammes
- `styles/` : Thèmes et styles personnalisés

## Technologies
- **Frontend**: React/Next.js (PWA)
- **Backend**: Node.js/NestJS
- **Database**: PostgreSQL
- **Cache**: Redis
- **Déploiement**: Docker, BitBucket Pipelines

## Utilisation
```bash
# Avec Structurizr CLI
structurizr-cli push -workspace workspace.dsl