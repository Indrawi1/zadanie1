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

![image](https://github.com/Indrawi1/zadanie1/assets/98088474/682c6062-15a8-4006-a308-2cf9a9681c56)


wrzycenie obraza na dockerhub
docker push milenarunets/zadanie:v1

Rozmiar obrazu i zagrożenia 
![DockerScoutiRozmiar](https://github.com/Indrawi1/zadanie1/assets/98088474/b6e1428a-926b-4d8e-bb15-d004481d95a9)


CZĘŚĆ DODATKOWA -----------------
Zbudować obrazy kontenera z aplikacją opracowaną w punkcie nr 1, które będą pracował na architekturach: linux/arm64 oraz linux/amd64 wykorzystując sterownik docker-container. Dockerfile powinien wykorzystywać rozszerzony frontend i umożliwiać wykorzystanie danych cache w procesie budowania obrazu (deklaracje wewnątrz Dockerfile)
![image](https://github.com/Indrawi1/zadanie1/assets/98088474/9ea20e56-1359-461c-b5d8-7660a6655038)

docker buildx build -f Dockerfile2 -t docker.io/milenarunets/zadanie:v2 --platform linux/amd64,linux/arm64 --tag milenarunets/zadanie:v2 --cache-to=type=registry,ref=milenarunets/zadanie:cache,mode=max,--cache-from=type=registry,ref=milenarunets/zadanie:cache --push .
