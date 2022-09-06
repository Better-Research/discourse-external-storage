# frozen_string_literal: true

# name: discourse-external-storage
# about: TODO
# version: 0.0.1
# authors: Abdullah Talayhan
# required_version: 2.7.0


enabled_site_setting :external_storage_enabled

after_initialize do
  load File.expand_path('../config/routes.rb', __FILE__)
  load File.expand_path('../app/controllers/papers_controller.rb', __FILE__)
end