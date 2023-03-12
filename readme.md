# Boligscraper  

Skal scrape boligspriser fra finn.no og lagre de i en postgresql-database.  

## Hensikt  

Kunne ha sammenligninsgrunnlag til neste boligkjøp og forventet avkastning 
hvis boligprisene stiger ca. 6 % hvert år.  

## Hva trenger jeg å vite  

Hva er høyeste pris i en budrunde som jeg er villig til å gå. 

F.eks.  
Hva er ansett som billig i et område?  
Hvor mye er jeg villig til å betale mtp. forventet prisøkning og at jeg skal bo der maks 3 år?  
Hva er forventet oppussingskostnad?

Kan man bruke maskinlæring for å finne ut av forventet pris om 3 år?

## Datakilde  

Kart.finn.no  

Eksempel på request:  

GET	https://kart.finn.no/map/object/content/10/263834841.html

```shell
curl -H 'User-Agent: Firefox' "https://kart.finn.no/map/object/content/10/263834841.html"  
```

gir respons som kan sees i [testdata_bolig_sorenga.html](testdata_bolig_sorenga.html)

extrahere ut data:  

```shell
xpath -e '/span/span/getText()' testdata_bolig_sorenga.html
```

### Bash-script  

curl  
xmllint -> bruke x-path  

### Python web-scraper  

scrapy  
xpath  


## Datalagring  

postgrest som backendapi  
postgres som database  


## TODO  

* [ ] Kjøre rest-api og database i docker-compose  
* [ ] Få POST- og GET- request til å fungere for data i boligannonse    
* [ ] Lage automatisk testscript for POST og GET-request
* [ ] Lage   
