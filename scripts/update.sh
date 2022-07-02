currentDir=$(pwd)
if [[ "$currentDir" != *"Faliactyl" && "$currentDir" != *"faliactyl" ]]; then
  echo "Please run this script from the main Faliactyl directory."
  exit 1
fi
mv settings.json settings.json.backup
git pull
echo "You will have to merge your settings.json manually. They have been backed up as settings.json.backup"
npm install
echo "You're all done and ready to go!"
