# Bugs and Notes File

## 1.
### Bug
  - Asset `application.css` was not declared to be precompiled in production. Declare links to your assets in `app/assets/config/manifest.js`. //= link application.css and restart your server
### Fix
  - switched the `/app/assets/config/manifest.js` from `//= link_directory ..stylesheets.css` to... `//= link application.css`



## 2.
### Bug
  - Tailwind navbar dropdown menu stuck and the button refactoring is not available in vanilla js
### Fix
    - run `./bin/importmap pin el-transition`
    - make sure this line `pin "el-transition", to: "https://ga.jspm.io/npm:el-transition@0.0.7/index.js"` has been added to the `/config/importmap.rb` file.
    - choose the actual div that will be appearing for the menu, and create a callback function for it with the transitions
    - provided here... https://github.com/mmccall10/el-transition



## 3.
### Bug
  - TDD RSPEC Fail
      1) Homes GET /index succeeds

    Failure/Error: <%= stylesheet_link_tag "tailwind", "inter-font", "data-turbo-track": "reload" %>
    
     ActionView::Template::Error:
       Error: Function rgb is missing argument $green.
               on line 1 of stdin
       >> dden]){--tw-divide-opacity:1;border-color:rgb(243 244 246/var(--tw-divide-op
          ------------------------------------------^
### Fix
  - Add `config.assets.css_compressor = nil` to `/config/environments/test.rb`



## 4.
### Bug
  -
### Fix
  -


