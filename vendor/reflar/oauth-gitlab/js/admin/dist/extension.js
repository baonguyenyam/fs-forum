'use strict';

System.register('reflar/auth-gitlab/components/GitLabSettingsModal', ['flarum/components/SettingsModal', 'flarum/app'], function (_export, _context) {
  "use strict";

  var SettingsModal, app, GitLabSettingsModal;
  return {
    setters: [function (_flarumComponentsSettingsModal) {
      SettingsModal = _flarumComponentsSettingsModal.default;
    }, function (_flarumApp) {
      app = _flarumApp.default;
    }],
    execute: function () {
      GitLabSettingsModal = function (_SettingsModal) {
        babelHelpers.inherits(GitLabSettingsModal, _SettingsModal);

        function GitLabSettingsModal() {
          babelHelpers.classCallCheck(this, GitLabSettingsModal);
          return babelHelpers.possibleConstructorReturn(this, (GitLabSettingsModal.__proto__ || Object.getPrototypeOf(GitLabSettingsModal)).apply(this, arguments));
        }

        babelHelpers.createClass(GitLabSettingsModal, [{
          key: 'className',
          value: function className() {
            return 'GitLabSettingsModal Modal--small';
          }
        }, {
          key: 'title',
          value: function title() {
            return app.translator.trans('reflar-oauth-gitlab.admin.gitlab_settings.title');
          }
        }, {
          key: 'form',
          value: function form() {
            return [m(
              'div',
              { className: 'Form-group' },
              m(
                'label',
                null,
                app.translator.trans('reflar-oauth-gitlab.admin.gitlab_settings.client_id_label')
              ),
              m('input', { className: 'FormControl', bidi: this.setting('reflar.auth.gitlab.app_id') })
            ), m(
              'div',
              { className: 'Form-group' },
              m(
                'label',
                null,
                app.translator.trans('reflar-oauth-gitlab.admin.gitlab_settings.client_secret_label')
              ),
              m('input', { className: 'FormControl', bidi: this.setting('reflar.auth.gitlab.app_secret') })
            )];
          }
        }]);
        return GitLabSettingsModal;
      }(SettingsModal);

      _export('default', GitLabSettingsModal);
    }
  };
});;
'use strict';

System.register('reflar/auth-gitlab/main', ['flarum/extend', 'flarum/app', 'reflar/auth-gitlab/components/GitLabSettingsModal'], function (_export, _context) {
  "use strict";

  var extend, app, GoogleSettingsModal;
  return {
    setters: [function (_flarumExtend) {
      extend = _flarumExtend.extend;
    }, function (_flarumApp) {
      app = _flarumApp.default;
    }, function (_reflarAuthGitlabComponentsGitLabSettingsModal) {
      GoogleSettingsModal = _reflarAuthGitlabComponentsGitLabSettingsModal.default;
    }],
    execute: function () {

      app.initializers.add('reflar/auth-gitlab', function (app) {
        app.extensionSettings['reflar-oauth-gitlab'] = function () {
          return app.modal.show(new GoogleSettingsModal());
        };
      });
    }
  };
});