# README

## About Lumiere

This is the documentation for the full-stack ecommerce site "Lumiere". It uses Ruby on Rails Framework for the architecture and TailwindCSS for styling. Lumiere is a mock furniture store company, that has most of the standard features of an e-commerce site. Any user may browse the product catalogue, however if the user wishes to add an item to their cart, they need to either sign-up or login to their free Lumiere account. Users can also see their current orders/ order history. Users can leave reviews on products as well, (limited to 1 review per product).

## Language and Tools version

Ruby Version: 3.4.9

Bundler Version: 2.6.9

Rails Version: 8.1.3

## Setup

Make sure ruby is installed on your system if you are trying to run from local host (note lumiere is not currently hosted online)

1. Clone the repo
2. Navigate to the root folder "Lumiere"

Install Bundles/Gems

3. Run "bundle install"

Initialize database (Lumiere uses sqlite3 for its database and since it is not hosted online, it has a local database with data that needs to be seeded in)

4. Run "rails db:create"
5. Run "rails db:migrate"
6. Run "rails db:seed"

Build Tailwind (styling may not be applied if you skip this)

7. Run "rails tailwindcss:build"

Start Local Host Server

7. Run "rails server" or "rails s"

Click the link or copy it in your browser to use the site.
