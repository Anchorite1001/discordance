# Project#1 - 离谱Discordance

This is an application I built for [离谱Discordance](https://discordance.herokuapp.com/) -- a Mandarin podcast I am cohosting with [Liangyu Sun](https://twitter.com/liangyu_s).

Take a look at the application [HERE](https://discordance.herokuapp.com/). All comments and suggestions are welcome!

I made this application as the second individual project at software engineering immersive [GA](https://generalassemb.ly/).

## Overview
This is a **Ruby on rails** application of [离谱Discordance](https://discordance.herokuapp.com/), where you can:
* Listen to each episode
* Read about all episode notes and introduction of each speakers
* Signing up an account, and then
* make your own list of liked episodes. <br/>
This is also my first try of **Bootstrap**.

## Models
There are three models in this project:
* Users
* Episodes
* Speakers <br/>
Users and Speakers both have **many-to-many** associations with Episodes (Each episode has several speakers, and it can also be added to different user's list).

## User
* This application uses bcrypt to build sign-up & sign-in functions for users to create and use their accounts.
* Each user can listen to their liked episodes directly on their account page.
* Admin accounts can create, edit and delete each episode and speaker and make associations between them.

## Episode
* Every episode has a show page with embedded podcast player and episode notes.

## Speaker
* Speakers are categorised as *'host'* or *'guest'* and are displayed separately.
* Every speaker has a show page with a list of episodes they participated in.

## Tech Stack
* Ruby on rails, PostgreSQL
* Bootstrap, HTML, CSS
* Heroku, bcrypt

## Acknowledgements
* I used several beautiful fonts from [Google fonts](https://fonts.google.com/).
* I used Podcast badges from [Apple Podcast](https://podcasts.apple.com/us/podcast/%E7%A6%BB%E8%B0%B1-discordance/id1549194238?itsct=podcast_box&itscg=30200) and [Spotify](https://open.spotify.com/show/1o9u0Z5WR7IxaCFofb547k).
