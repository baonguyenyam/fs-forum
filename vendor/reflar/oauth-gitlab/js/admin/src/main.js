import { extend } from 'flarum/extend';
import app from 'flarum/app';

import GoogleSettingsModal from 'reflar/auth-gitlab/components/GitLabSettingsModal';

app.initializers.add('reflar/auth-gitlab', app => {
  app.extensionSettings['reflar-oauth-gitlab'] = () => app.modal.show(new GoogleSettingsModal());
});