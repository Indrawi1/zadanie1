# zadanie1
Ppolecenia niezbędne do:
a.	zbudowania opracowanego obrazu kontenera:
docker build -t zadanie:v1 .
 

b.	uruchomienia kontenera na podstawie zbudowanego obrazu:
docker run -d -p 8080:8081 --name kontener1 zadanie:v1
 
c.	sposobu uzyskania informacji, które wygenerował serwer w trakcie uruchamiana kontenera:
docker logs kontener1
 
d.	sprawdzenia, ile warstw posiada zbudowany obraz:
docker history zadanie:v1
 
wrzycenie obraza na dockerhub
docker push milenarunets/zadanie:v1
