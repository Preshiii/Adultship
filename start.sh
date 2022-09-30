if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AdultshipTG/Adultship.git /Adultship
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Adultship
fi
cd /Adultship
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
