
Objectifs :

1. Prendre les X zones de la région (.gpkg)
2. Split ca dans x fichier par ID de zone
3. Pour chacun des fichiers à partir de mtn : Load le fichier
4. Donner des ID numérotés pour chaque parcelle de chaque OCCSOL
5. Créer une grid de 5m de résolution au dessus
6. Pour chaque tuile de la grid : (1) Prendre l'occsol qui recouvre le + de surface; (2) Prendre les infos (et id commu) de la parcelle de cette occsol qui a le plus de surface dans la tile
7. Rasteriser comme ca

