# hallonpaj
Supportskript för Raspberry Pi 


## monitor_temp.sh
Monitorerar temp på raspberry pi kontinuerligt och skriver resultat till en loggfil $HOME/logs/temperature.log, efter 1000 rader raderas denna (läggs då i backup tempfil). Glöm ej att lägga till cronjob som sätts igång vid reboot (crontab -e).

## ssh_secret.bat
> Anslut via ssh från en windows maskin till en remote host och spela ett zelda secret unlocked ljud om anslutningen lyckas.

Prerequisite: RSA key

Undangå att behöva skriva i lösenord för att logga in på raspberry pi, eftersom skriptet blir kinkigt då. Generera rsa key pair för en automatisk anslutning. Lägg den genererade publika nyckeln och lägg den i ~/.ssh/authorized_keys (skapa om denna mapp/fil inte finns).

1. Generera med:
    
    ```
    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
    ```
    
    och spara som C:\Users\YourUsername\.ssh\id_rsa. Passphrase måste skrivas in vid varje inlogg om man skapar med det, annars håll tomt. Inte bra om någon får tag i den hemliga nyckeln, men ok ish annars.
    
2. Kopiera innehållet i C:\Users\YourUsername\.ssh\id_rsa.pub och lägg i ~/.ssh/authorized_keys på remote host. Bör nu kunna köra ssh utan inloggning.
