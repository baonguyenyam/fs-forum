<?php

namespace Reflar\Auth\GitLab\Listener;

use Flarum\Event\ConfigureForumRoutes;
use Illuminate\Contracts\Events\Dispatcher;

class AddGitLabAuthRoute
{
    /**
     * @param Dispatcher $events
     */
    public function subscribe(Dispatcher $events)
    {
        $events->listen(ConfigureForumRoutes::class, [$this, 'configureForumRoutes']);
    }

    /**
     * @param ConfigureForumRoutes $event
     */
    public function configureForumRoutes(ConfigureForumRoutes $event)
    {
        $event->get('/auth/gitlab', 'auth.gitlab', 'Reflar\Auth\GitLab\GitLabAuthController');
    }
}
