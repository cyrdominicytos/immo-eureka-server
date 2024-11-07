# 1. Arrêter tous les conteneurs en cours d'exécution
docker stop $(docker ps -q)

# 2. Supprimer tous les conteneurs (arrêtés et en cours d'exécution)
docker rm $(docker ps -aq)

# 3. Supprimer toutes les images Docker
docker rmi $(docker images -q)

# arrêter et supprimer tout en une seule fois :
docker stop $(docker ps -q) && docker rm $(docker ps -aq) && docker rmi $(docker images -q)

# Ces commandes supprimeront toutes les images et conteneurs, mais elles n'affecteront pas les volumes. Pour supprimer également les volumes, vous pouvez exécuter :
docker volume rm $(docker volume ls -q)

# supprimer toutes les images, conteneurs, volumes et réseaux inutilisés en une seule commande, vous pouvez utiliser :
docker system prune -a --volumes

# Attention : docker system prune -a --volumes supprimera toutes les données Docker inutilisées de votre machine, y compris les conteneurs, images, volumes et réseaux.