:: Script automatically connects to a host and plays a sound snippet.
:: RSA public key has to be put in authorized key file on the remote host.
:: Replace user, host and sound_file 

@echo off
echo Attempting to SSH into Raspberry Pi...
ssh norashallon@192.168.0.27 "echo 'Connecting'"
if %errorlevel%==0 (
    echo SSH connection successful
    powershell -Command "(New-Object Media.SoundPlayer '.\sound\secret.wav').PlaySync()"
) else (
    echo SSH connection failed
)
ssh norashallon@192.168.0.27

#'C:\Users\no\Documents\Projekt\startup_secret\sound\secret.wav'
