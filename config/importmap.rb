# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap" # @5.3.2
pin "@popperjs/core", to: "popper.js" # @2.11.8
pin "mapbox-gl" # @3.0.1
pin "process" # @2.0.1importmap
pin "@rails/actioncable", to: "@rails--actioncable.js" # @7.1.2
