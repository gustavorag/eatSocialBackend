echo "Creating database"
mongo localhost:27017/admin --eval "use eatSocialDev;"
echo "Loading restaurants mock data"
mongoimport --db eatSocialDev --collection restaurants --drop --host=127.0.0.1 --file restaurants.json
echo "Restaurants mock data loaded"
echo "Loading Tables mock data"
mongoimport --db eatSocialDev --collection tables --drop --host=127.0.0.1 --file tables.json
echo "Tables mock data loaded"
echo "Loading menus mock data"
mongoimport --db eatSocialDev --collection menus --drop --host=127.0.0.1 --file menus.json
echo "Menu mock data loaded"
echo "Loading MenuItems mock data"
mongoimport --db eatSocialDev --collection menu_items --drop --host=127.0.0.1 --file menuItems.json
echo "MenuItems mock data loaded"