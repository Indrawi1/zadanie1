# zadanie1
Ppolecenia niezbędne do:
a.	zbudowania opracowanego obrazu kontenera:
docker build -t zadanie:v1 .
 ![image](https://github.com/Indrawi1/zadanie1/assets/98088474/3c12bc0b-6c95-455a-b241-36d7e31344e4)


b.	uruchomienia kontenera na podstawie zbudowanego obrazu:
docker run -d -p 8080:8081 --name kontener1 zadanie:v1
 ![image](https://github.com/Indrawi1/zadanie1/assets/98088474/959ca9a5-9c8e-401d-975d-b6f0d8961543)

c.	sposobu uzyskania informacji, które wygenerował serwer w trakcie uruchamiana kontenera:
docker logs kontener1
 ![image](https://github.com/Indrawi1/zadanie1/assets/98088474/f02e2ff0-559a-4909-a941-fb69584c1625)

d.	sprawdzenia, ile warstw posiada zbudowany obraz:
docker history zadanie:v1
 ![image](https://github.com/Indrawi1/zadanie1/assets/98088474/d4f99b31-780e-4178-a5f2-c2a115fe63d8)

wrzycenie obraza na dockerhub
docker push milenarunets/zadanie:v1
