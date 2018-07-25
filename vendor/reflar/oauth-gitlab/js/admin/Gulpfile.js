var gulp = require('flarum-gulp');

gulp({
  modules: {
    'reflar/auth-gitlab': [
      'src/**/*.js'
    ]
  }
});
