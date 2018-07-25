# Flarum GitLab Login
Allows users to login using their GitLab Account.

## Installation
To install, use composer:
```
composer require reflar/oauth-gitlab
```

## Setup
1. Go to https://gitlab.com/oauth/applications
2. Login if prompted
3. Set the name of the application to whatever you want 
4. Your **Redirect Url** is http://flarum.domain.com/auth/gitlab
5. 


**Notice**
The *Hosted Domain* paramater is for custom hosted GitLab instances. Leave it blank if you use gitlab.com.
