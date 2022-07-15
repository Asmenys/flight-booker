# FLIGHT BOOKER

## This is an attempt at creating a basic flight booker app in rails.

Live heroku page: https://murmuring-river-71927.herokuapp.com/
> **NOTE:** Initial load time for the app may be relatively lengthy due to Heroku's dyno sleep policy.

## Features
* Database seeds to populate the database with data that attempts to mimick a real world use case.
> **Note:** Generates a limited number of flights therefore not all search combinations will return a flight.
* Turbo fast application responsiveness using Turbo Frames.
* Responsive design using grid.
* Styling using tailwindscss
* Improved user experience using nested form elements to create multiple objects in a single go.

## Installing / Getting Started

> Prerequisites:
> * Ruby >= 3.1.2
> * Rails >= 7.0.3
> * Bundler >= 2.3.6
> * PostgreSQL >= 14.3

```bash
git clone https://github.com/Asmenys/flight-booker
cd flight-booker/
bundle install
bin/rails server
```
Then visit http://localhost:3000/ in your browser to view the application.
