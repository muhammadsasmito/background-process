# Background Process with Rails, Redis and Sidekiq
## Binar Connect 15 Sept 2018 - Optimizing Ruby on Rails for Performance and Scalability
  
## Requirement
- Install Redis
`sudo dnf install redis` [fedora/redhat]

## Configure to use background process
- setup `config/application.rb`
to use redis as cache store and sidekiq as queue backend
- create worker
create class file worker in `app/worker/background_worker.rb` (you can replace as you want)
this file use to save a process that will run in background
  
## Setup
- clone this repo and change dir to this project
- `bundle install`
- `rails db:create`
- `rails s` to run server
- `bundle exec sidekiq` to run sidekiq job runner
- `redis-server` to run redis db
- hit `http://localhost:3000` 
- and happy learning :)
  
## Presentation
- https://docs.google.com/presentation/d/1O7mloFLl2LZklD4bMSHzSTL2LaHZlTRpZp9AB2lSTgI/edit?usp=sharing
