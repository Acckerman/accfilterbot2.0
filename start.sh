if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Acckerman/accfilterbot2.0
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /accfilterbot2.0
fi
cd /accfilterbot2.0
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
