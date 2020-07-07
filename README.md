## Savecation

Savecation is an online app that allows users to vacation on a budget in select popular locations. Users must first create an account, then they will select a location and enter a budget. The app will suggest restaurants and tourist attractions based on that budget that the user can then schedule on a personal calendar.
 
Savecation is an application targeted at the average person who would like to travel, but may not have the bankroll for extravagance. Existing web apps, such as Tripadvisor and Airbnb, suggest places to visit and indicate cost, but they do not work within a user-defined budget. Savecation will allow the user to experience the best possible vacation that they can afford.

Users of the application will be able to log in, select a city to travel to, specify a budget, and the calendar length of the stay. The application will then find restaurants and attractions based on input and return results based on user ranking. The user will have the option to make a reservation at a restaurant(s) of their choice, and select which attractions to add to their schedule. The application will make use of the Google Maps, Expedia, Yelp, and OpenTable APIs. 

Theme from https://github.com/BlackrockDigital/startbootstrap-creative

## APIs used

1. Weather API 
2. News API from newsapi.org
3. Google Maps
4. In-house API for getting data from the backend that's displayed on city_detail and attraction_detail pages

## API endpoints
1. https://pure-coast-27115.herokuapp.com/data/cities -> List of all cities and their corresponding data.
2. https://pure-coast-27115.herokuapp.com/data/city/:id -> List of ALL attractions associated with that city.
3. https://pure-coast-27115.herokuapp.com/data/attraction/:id -> Detailed information about an attraction
4. http://pure-coast-27115.herokuapp.com/generate_schedule/city/:id/days/:days/budget/:budget -> Generate a schedule based on days and budget constraint for a particular city.
