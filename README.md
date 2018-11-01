# RPS Challenge

A simple rock, paper, scissors game built with Ruby and sinatra and tested with RSpec and Capybara.

Tags: OOP, TDD, Ruby, HTML, CSS, Sinatra, MVC, RSpec, Capybara, Rubocop

## Get Started

```
$ git clone https://github.com/Lucx14/rps-challenge.git
$ cd rps-challenge
$ bundle
$ rackup
```


## User Stories

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```


## project structure

```
.
├── CONTRIBUTING.md
├── Gemfile
├── Gemfile.lock
├── LICENSE
├── README.md
├── Rakefile
├── app.rb
├── config.ru
├── coverage
│   ├── assets
│   │   └── 0.10.2
│   │       ├── application.css
│   │       ├── application.js
│   │       ├── colorbox
│   │       │   ├── border.png
│   │       │   ├── controls.png
│   │       │   ├── loading.gif
│   │       │   └── loading_background.png
│   │       ├── favicon_green.png
│   │       ├── favicon_red.png
│   │       ├── favicon_yellow.png
│   │       ├── loading.gif
│   │       ├── magnify.png
│   │       └── smoothness
│   │           └── images
│   │               ├── ui-bg_flat_0_aaaaaa_40x100.png
│   │               ├── ui-bg_flat_75_ffffff_40x100.png
│   │               ├── ui-bg_glass_55_fbf9ee_1x400.png
│   │               ├── ui-bg_glass_65_ffffff_1x400.png
│   │               ├── ui-bg_glass_75_dadada_1x400.png
│   │               ├── ui-bg_glass_75_e6e6e6_1x400.png
│   │               ├── ui-bg_glass_95_fef1ec_1x400.png
│   │               ├── ui-bg_highlight-soft_75_cccccc_1x100.png
│   │               ├── ui-icons_222222_256x240.png
│   │               ├── ui-icons_2e83ff_256x240.png
│   │               ├── ui-icons_454545_256x240.png
│   │               ├── ui-icons_888888_256x240.png
│   │               └── ui-icons_cd0a0a_256x240.png
│   └── index.html
├── docs
├── lib
│   ├── computer.rb
│   └── game.rb
├── spec
│   ├── computer_spec.rb
│   ├── features
│   │   ├── click_to_play_spec.rb
│   │   ├── enter_name_spec.rb
│   │   ├── play_spec.rb
│   │   └── web_helpers.rb
│   ├── game_spec.rb
│   └── spec_helper.rb
└── views
    ├── index.erb
    ├── play.erb
    └── welcome.erb

    ```