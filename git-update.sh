#!/bin/bash
# Update ownCloud core and apps to latest git master

echo
echo "Updating core …"
git checkout master
git pull
echo

echo "Updating 3rdparty …"
cd 3rdparty
git checkout master
git pull
cd ..
echo

echo "Updating apps …"
cd apps
git checkout master
git pull
echo

for APP in appframework notes calendar contacts bookmarks news mail
do
  echo "Updating $APP …"
  cd $APP
  git checkout master
  git pull
  cd ..
  echo
done
