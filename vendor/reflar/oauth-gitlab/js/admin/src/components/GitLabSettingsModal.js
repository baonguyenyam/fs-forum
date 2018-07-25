import SettingsModal from 'flarum/components/SettingsModal';
import app from 'flarum/app';

export default class GitLabSettingsModal extends SettingsModal {
  className() {
    return 'GitLabSettingsModal Modal--small';
  }

  title() {
    return app.translator.trans('reflar-oauth-gitlab.admin.gitlab_settings.title');
  }

  form() {
    return [
      <div className="Form-group">
        <label>{app.translator.trans('reflar-oauth-gitlab.admin.gitlab_settings.client_id_label')}</label>
        <input className="FormControl" bidi={this.setting('reflar.auth.gitlab.app_id')}/>
      </div>,

      <div className="Form-group">
        <label>{app.translator.trans('reflar-oauth-gitlab.admin.gitlab_settings.client_secret_label')}</label>
        <input className="FormControl" bidi={this.setting('reflar.auth.gitlab.app_secret')}/>
      </div>
    ];
  }
}
