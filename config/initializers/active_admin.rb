ActiveAdmin.setup do |config|
  # == Site Title
  #
  # Set the title that is displayed on the main layout
  # for each of the active admin pages.
  #
  config.site_title = "Vagabondr"

  # Set the link url for the title. For example, to take
  # users to your main site. Defaults to no link.
  #
  config.site_title_link = "/"

  # Set an optional image to be displayed for the header
  # instead of a string (overrides :site_title)
  #
  # Note: Aim for an image that's 21px high so it fits in the header.
  #
  config.site_title_image = "data:image/jpeg;base64,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"

  # == Default Namespace
  #
  # Set the default namespace each administration resource
  # will be added to.
  #
  # eg:
  #   config.default_namespace = :hello_world
  #
  # This will create resources in the HelloWorld module and
  # will namespace routes to /hello_world/*
  #
  # To set no namespace by default, use:
  #   config.default_namespace = false
  #
  # Default:
  # config.default_namespace = :admin
  #
  # You can customize the settings for each namespace by using
  # a namespace block. For example, to change the site title
  # within a namespace:
  #
  #   config.namespace :admin do |admin|
  #     admin.site_title = "Custom Admin Title"
  #   end
  #
  # This will ONLY change the title for the admin section. Other
  # namespaces will continue to use the main "site_title" configuration.

  # == User Authentication
  #
  # Active Admin will automatically call an authentication
  # method in a before filter of all controller actions to
  # ensure that there is a currently logged in admin user.
  #
  # This setting changes the method which Active Admin calls
  # within the application controller.
  config.authentication_method = :authenticate_admin_user!

  # == User Authorization
  #
  # Active Admin will automatically call an authorization
  # method in a before filter of all controller actions to
  # ensure that there is a user with proper rights. You can use
  # CanCanAdapter or make your own. Please refer to documentation.
  # config.authorization_adapter = ActiveAdmin::CanCanAdapter

  # In case you prefer Pundit over other solutions you can here pass
  # the name of default policy class. This policy will be used in every
  # case when Pundit is unable to find suitable policy.
  # config.pundit_default_policy = "MyDefaultPunditPolicy"

  # You can customize your CanCan Ability class name here.
  # config.cancan_ability_class = "Ability"

  # You can specify a method to be called on unauthorized access.
  # This is necessary in order to prevent a redirect loop which happens
  # because, by default, user gets redirected to Dashboard. If user
  # doesn't have access to Dashboard, he'll end up in a redirect loop.
  # Method provided here should be defined in application_controller.rb.
  # config.on_unauthorized_access = :access_denied

  # == Current User
  #
  # Active Admin will associate actions with the current
  # user performing them.
  #
  # This setting changes the method which Active Admin calls
  # (within the application controller) to return the currently logged in user.
  config.current_user_method = :current_admin_user

  # == Logging Out
  #
  # Active Admin displays a logout link on each screen. These
  # settings configure the location and method used for the link.
  #
  # This setting changes the path where the link points to. If it's
  # a string, the strings is used as the path. If it's a Symbol, we
  # will call the method to return the path.
  #
  # Default:
  config.logout_link_path = :destroy_admin_user_session_path

  # This setting changes the http method used when rendering the
  # link. For example :get, :delete, :put, etc..
  #
  # Default:
  # config.logout_link_method = :get

  # == Root
  #
  # Set the action to call for the root path. You can set different
  # roots for each namespace.
  #
  # Default:
  # config.root_to = 'dashboard#index'

  # == Admin Comments
  #
  # This allows your users to comment on any resource registered with Active Admin.
  #
  # You can completely disable comments:
  # config.comments = false
  #
  # You can disable the menu item for the comments index page:
  config.show_comments_in_menu = false
  #
  # You can change the name under which comments are registered:
  # config.comments_registration_name = 'AdminComment'

  # == Batch Actions
  #
  # Enable and disable Batch Actions
  #
  config.batch_actions = true

  # == Controller Filters
  #
  # You can add before, after and around filters to all of your
  # Active Admin resources and pages from here.
  #
  # config.before_filter :do_something_awesome

  # == Setting a Favicon
  #
  # config.favicon = 'favicon.ico'

  # == Removing Breadcrumbs
  #
  # Breadcrumbs are enabled by default. You can customize them for individual
  # resources or you can disable them globally from here.
  #
  # config.breadcrumb = false

  # == Register Stylesheets & Javascripts
  #
  # We recommend using the built in Active Admin layout and loading
  # up your own stylesheets / javascripts to customize the look
  # and feel.
  #
  # To load a stylesheet:
  #   config.register_stylesheet 'my_stylesheet.css'
  #
  # You can provide an options hash for more control, which is passed along to stylesheet_link_tag():
  #   config.register_stylesheet 'my_print_stylesheet.css', media: :print
  #
  # To load a javascript file:
  #   config.register_javascript 'my_javascript.js'

  # == CSV options
  #
  # Set the CSV builder separator
  # config.csv_options = { col_sep: ';' }
  #
  # Force the use of quotes
  # config.csv_options = { force_quotes: true }

  # == Menu System
  #
  # You can add a navigation menu to be used in your application, or configure a provided menu
  #
  # To change the default utility navigation to show a link to your website & a logout btn
  #
  #   config.namespace :admin do |admin|
  #     admin.build_menu :utility_navigation do |menu|
  #       menu.add label: "My Great Website", url: "http://www.mygreatwebsite.com", html_options: { target: :blank }
  #       admin.add_logout_button_to_menu menu
  #     end
  #   end
  #
  # If you wanted to add a static menu item to the default menu provided:
  #
  #   config.namespace :admin do |admin|
  #     admin.build_menu :default do |menu|
  #       menu.add label: "My Great Website", url: "http://www.mygreatwebsite.com", html_options: { target: :blank }
  #     end
  #   end

  # == Download Links
  #
  # You can disable download links on resource listing pages,
  # or customize the formats shown per namespace/globally
  #
  # To disable/customize for the :admin namespace:
  #
  #   config.namespace :admin do |admin|
  #
  #     # Disable the links entirely
  #     admin.download_links = false
  #
  #     # Only show XML & PDF options
  #     admin.download_links = [:xml, :pdf]
  #
  #     # Enable/disable the links based on block
  #     #   (for example, with cancan)
  #     admin.download_links = proc { can?(:view_download_links) }
  #
  #   end

  # == Pagination
  #
  # Pagination is enabled by default for all resources.
  # You can control the default per page count for all resources here.
  #
  # config.default_per_page = 30

  # == Filters
  #
  # By default the index screen includes a "Filters" sidebar on the right
  # hand side with a filter for each attribute of the registered model.
  # You can enable or disable them for all resources here.
  #
  # config.filters = true
end
