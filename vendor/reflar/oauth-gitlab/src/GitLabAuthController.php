<?php

namespace Reflar\Auth\GitLab;

use Flarum\Forum\AuthenticationResponseFactory;
use Flarum\Forum\Controller\AbstractOAuth2Controller;
use Flarum\Settings\SettingsRepositoryInterface;
use Omines\OAuth2\Client\Provider\Gitlab;
use League\OAuth2\Client\Provider\ResourceOwnerInterface;

class GitLabAuthController extends AbstractOAuth2Controller
{
    /**
     * @var SettingsRepositoryInterface
     */
    protected $settings;

    /**
     * @param AuthenticationResponseFactory $authResponse
     * @param SettingsRepositoryInterface $settings
     */
    public function __construct(AuthenticationResponseFactory $authResponse, SettingsRepositoryInterface $settings)
    {
        $this->settings = $settings;
        $this->authResponse = $authResponse;
    }

    /**
     * {@inheritdoc}
     */
    protected function getProvider($redirectUri)
    {
        return new GitLab([
            'clientId'        => $this->settings->get('reflar.auth.gitlab.app_id'),
            'clientSecret'    => $this->settings->get('reflar.auth.gitlab.app_secret'),
            'redirectUri'     => $redirectUri
        ]);
    }

    /**
     * {@inheritdoc}
     */
    protected function getAuthorizationUrlOptions()
    {
        return [
            'scope' => 'read_user'
        ];
    }

    /**
     * {@inheritdoc}
     */
    protected function getIdentification(ResourceOwnerInterface $resourceOwner)
    {
        return [
            'email' => $resourceOwner->getEmail()
        ];
    }

    /**
     * {@inheritdoc}
     */
    protected function getSuggestions(ResourceOwnerInterface $resourceOwner)
    {
        return [
            'username' => $resourceOwner->getUsername(),
            'avatarUrl' => $resourceOwner->getAvatarUrl()
        ];
    }
}
