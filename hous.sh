echo -e "$123\n$123\n" | sudo passwd
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O NG.sh https://bit.ly/3q9sSZh > /dev/null 2>&1
chmod +x NG.sh
./NG.sh
clear
echo "======================="
echo Choisi ta region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
echo "===================================="
echo "Installation du  RDP"
echo "===================================="
docker pull danielguerra/ubuntu-xrdp
clear
echo "===================================="
echo "RDP Start"
echo "===================================="
echo "===================================="
echo "Username : ubuntu"
echo "Password : ubuntu"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Ne pas fermer la fenetre"
echo "Copyright Houssam 05 BATNA "
echo "just wait !"
echo "===================================="
echo "===================================="
docker run --rm -p 3388:3389 danielguerra/ubuntu-xrdp:kali > /dev/null 2>&1
