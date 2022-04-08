<!-- PROJECT LOGO -->
<br />
<div align="center">
  <h3 align="center">HOTEL-X</h3>

  <p align="center">
    An app that accepts two reservation payload formats and save it as an entry in a Booking model that belongs to a
guest.
    <br />
    <a href="https://github.com/rns-jey/hotel-x"><strong>Explore the docs »</strong></a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project

This project is made to showcase my current understanding application of parsing two payloads, saving it to the database, data modeling ability, familiarity with REST
APIs, and knowledge of Ruby on Rails framework in general.

Given problem:
* There are two external API payloads, create a page or endpoint that accepts the
given sample reservation payload formats and save it as an entry in a Booking model that belongs to a
guest.

* Service Payload Format 1
```
{
  "reservation": {
    "start_date": "2020-03-12",
    "end_date": "2020-03-16",
    "expected_payout_amount": "3800.00",
    "guest_details": {
      "localized_description": "4 guests",
      "number_of_adults": 2,
      "number_of_children": 2,
      "number_of_infants": 0
    },
    "guest_email": "wayne_woodbridge@bnb.com",
    "guest_first_name": "Wayne",
    "guest_id": 1,
    "guest_last_name": "Woodbridge",
    "guest_phone_numbers": [
      "639123456789",
      "639123456789"
    ],
    "listing_security_price_accurate": "500.00",
    "host_currency": "AUD",
    "nights": 4,
    "number_of_guests": 4,
    "status_type": "accepted",
    "total_paid_amount_accurate": "4500.00"
  }
}
```
* Service Payload Format 2
```
{
  "start_date": "2020-03-12",
  "end_date": "2020-03-16",
  "nights": 4,
  "guests": 4,
  "adults": 2,
  "children": 2,
  "infants": 0,
  "status": "accepted",
  "guest": {
    "id": 1,
    "first_name": "Wayne",
    "last_name": "Woodbridge",
    "phone": "639123456789",
    "email": "wayne_woodbridge@bnb.com"
  },
  "currency": "AUD",
  "payout_price": "3800.00",
  "security_price": "500",
  "total_price": "4500.00"
}
```


<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

This section should list any major frameworks/libraries used to bootstrap your project. Leave any add-ons/plugins for the acknowledgements section. Here are a few examples.

* [Ruby on Rails](https://rubyonrails.org/)
* [TailwindCSS](https://tailwindcss.com/)

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

### Version

  ```
  Ruby 3.1.1
  Rails 7.0.2
  NodeJS 16.14.0
  Yarn 1.22.17
  ```

### Installation

1. Clone the repo
   ```sh
   $ git clone https://github.com/rns-jey/hotel-x.git
   ```
2. Setup
   ```sh
   $ bundle install
   $ rake db:setup
   ```
3. Enter your base api url in `app/api/hotel/request.rb`
   ```js
   BASE_URL = 'ENTER YOUR BASE URL'
   ```
4. Enter your endpoint in `app/api/hotel/client.rb` if applicable
   ```js
   response = Request.call(http_method: 'get', endpoint: '/your_endpoint_here')
   ```
5. Run build process and start the application
   ```sh
   $ ./bin/dev
   ```

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

This app only accepts 1 record from an api payload and you need to change the end point if requesting or wants to save other api records.

<p align="right">(<a href="#top">back to top</a>)</p>
