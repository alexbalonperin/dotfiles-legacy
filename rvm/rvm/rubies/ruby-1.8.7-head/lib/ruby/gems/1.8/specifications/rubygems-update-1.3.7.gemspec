# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rubygems-update}
  s.version = "1.3.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jim Weirich", "Chad Fowler", "Eric Hodel"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDNjCCAh6gAwIBAgIBADANBgkqhkiG9w0BAQUFADBBMRAwDgYDVQQDDAdkcmJy\nYWluMRgwFgYKCZImiZPyLGQBGRYIc2VnbWVudDcxEzARBgoJkiaJk/IsZAEZFgNu\nZXQwHhcNMDcxMjIxMDIwNDE0WhcNMDgxMjIwMDIwNDE0WjBBMRAwDgYDVQQDDAdk\ncmJyYWluMRgwFgYKCZImiZPyLGQBGRYIc2VnbWVudDcxEzARBgoJkiaJk/IsZAEZ\nFgNuZXQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCbbgLrGLGIDE76\nLV/cvxdEzCuYuS3oG9PrSZnuDweySUfdp/so0cDq+j8bqy6OzZSw07gdjwFMSd6J\nU5ddZCVywn5nnAQ+Ui7jMW54CYt5/H6f2US6U0hQOjJR6cpfiymgxGdfyTiVcvTm\nGj/okWrQl0NjYOYBpDi+9PPmaH2RmLJu0dB/NylsDnW5j6yN1BEI8MfJRR+HRKZY\nmUtgzBwF1V4KIZQ8EuL6I/nHVu07i6IkrpAgxpXUfdJQJi0oZAqXurAV3yTxkFwd\ng62YrrW26mDe+pZBzR6bpLE+PmXCzz7UxUq3AE0gPHbiMXie3EFE0oxnsU3lIduh\nsCANiQ8BAgMBAAGjOTA3MAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdDgQW\nBBS5k4Z75VSpdM0AclG2UvzFA/VW5DANBgkqhkiG9w0BAQUFAAOCAQEAHagT4lfX\nkP/hDaiwGct7XPuVGbrOsKRVD59FF5kETBxEc9UQ1clKWngf8JoVuEoKD774dW19\nbU0GOVWO+J6FMmT/Cp7nuFJ79egMf/gy4gfUfQMuvfcr6DvZUPIs9P/TlK59iMYF\nDIOQ3DxdF3rMzztNUCizN4taVscEsjCcgW6WkUJnGdqlu3OHWpQxZBJkBTjPCoc6\nUW6on70SFPmAy/5Cq0OJNGEWBfgD9q7rrs/X8GGwUWqXb85RXnUVi/P8Up75E0ag\n14jEc90kN+C7oI/AGCBN0j6JnEtYIEJZibjjDJTSMWlUKKkj30kq7hlUC2CepJ4v\nx52qPcexcYZR7w==\n-----END CERTIFICATE-----\n"]
  s.date = %q{2010-05-13}
  s.default_executable = %q{update_rubygems}
  s.description = %q{RubyGems is a package management framework for Ruby.

This gem is an update for the RubyGems software. You must have an
installation of RubyGems before this update can be applied.

See Gem for information on RubyGems (or `ri Gem`)

To upgrade to the latest RubyGems, run:

  $ gem update --system  # you might need to be an administrator or root

NOTE:  RubyGems 1.1 and 1.2 have problems upgrading when there is no
rubygems-update installed.  You will need to use the following instructions
if you see "Nothing to update".

If you have an older version of RubyGems installed, then you can still
do it in two steps:

  $ gem install rubygems-update  # again, might need to be admin/root
  $ update_rubygems              # ... here too

If you don't have any RubyGems install, there is still the pre-gem approach to
getting software, doing it manually:

1. Download from: http://rubyforge.org/frs/?group_id=126
2. Unpack into a directory and cd there
3. Install with: ruby setup.rb  # you may need admin/root privilege

For more details and other options, see:

  ruby setup.rb --help}
  s.email = ["rubygems-developers@rubyforge.org"]
  s.executables = ["update_rubygems"]
  s.files = ["test/test_config.rb", "test/test_gem.rb", "test/test_gem_builder.rb", "test/test_gem_command.rb", "test/test_gem_command_manager.rb", "test/test_gem_commands_build_command.rb", "test/test_gem_commands_cert_command.rb", "test/test_gem_commands_check_command.rb", "test/test_gem_commands_contents_command.rb", "test/test_gem_commands_dependency_command.rb", "test/test_gem_commands_environment_command.rb", "test/test_gem_commands_fetch_command.rb", "test/test_gem_commands_generate_index_command.rb", "test/test_gem_commands_install_command.rb", "test/test_gem_commands_list_command.rb", "test/test_gem_commands_lock_command.rb", "test/test_gem_commands_mirror_command.rb", "test/test_gem_commands_outdated_command.rb", "test/test_gem_commands_owner_command.rb", "test/test_gem_commands_pristine_command.rb", "test/test_gem_commands_push_command.rb", "test/test_gem_commands_query_command.rb", "test/test_gem_commands_server_command.rb", "test/test_gem_commands_sources_command.rb", "test/test_gem_commands_specification_command.rb", "test/test_gem_commands_stale_command.rb", "test/test_gem_commands_uninstall_command.rb", "test/test_gem_commands_unpack_command.rb", "test/test_gem_commands_update_command.rb", "test/test_gem_commands_which_command.rb", "test/test_gem_config_file.rb", "test/test_gem_dependency.rb", "test/test_gem_dependency_installer.rb", "test/test_gem_dependency_list.rb", "test/test_gem_doc_manager.rb", "test/test_gem_ext_configure_builder.rb", "test/test_gem_ext_ext_conf_builder.rb", "test/test_gem_ext_rake_builder.rb", "test/test_gem_format.rb", "test/test_gem_gem_path_searcher.rb", "test/test_gem_gem_runner.rb", "test/test_gem_gemcutter_utilities.rb", "test/test_gem_indexer.rb", "test/test_gem_install_update_options.rb", "test/test_gem_installer.rb", "test/test_gem_local_remote_options.rb", "test/test_gem_package_tar_header.rb", "test/test_gem_package_tar_input.rb", "test/test_gem_package_tar_output.rb", "test/test_gem_package_tar_reader.rb", "test/test_gem_package_tar_reader_entry.rb", "test/test_gem_package_tar_writer.rb", "test/test_gem_package_task.rb", "test/test_gem_platform.rb", "test/test_gem_remote_fetcher.rb", "test/test_gem_requirement.rb", "test/test_gem_server.rb", "test/test_gem_source_index.rb", "test/test_gem_spec_fetcher.rb", "test/test_gem_specification.rb", "test/test_gem_stream_ui.rb", "test/test_gem_uninstaller.rb", "test/test_gem_validator.rb", "test/test_gem_version.rb", "test/test_gem_version_option.rb", "test/test_kernel.rb", "bin/update_rubygems"]
  s.homepage = %q{http://rubygems.org/}
  s.require_paths = ["hide_lib_for_update"]
  s.required_ruby_version = Gem::Requirement.new("> 1.8.3")
  s.rubyforge_project = %q{rubygems}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{RubyGems is a package management framework for Ruby}
  s.test_files = ["test/test_config.rb", "test/test_gem.rb", "test/test_gem_builder.rb", "test/test_gem_command.rb", "test/test_gem_command_manager.rb", "test/test_gem_commands_build_command.rb", "test/test_gem_commands_cert_command.rb", "test/test_gem_commands_check_command.rb", "test/test_gem_commands_contents_command.rb", "test/test_gem_commands_dependency_command.rb", "test/test_gem_commands_environment_command.rb", "test/test_gem_commands_fetch_command.rb", "test/test_gem_commands_generate_index_command.rb", "test/test_gem_commands_install_command.rb", "test/test_gem_commands_list_command.rb", "test/test_gem_commands_lock_command.rb", "test/test_gem_commands_mirror_command.rb", "test/test_gem_commands_outdated_command.rb", "test/test_gem_commands_owner_command.rb", "test/test_gem_commands_pristine_command.rb", "test/test_gem_commands_push_command.rb", "test/test_gem_commands_query_command.rb", "test/test_gem_commands_server_command.rb", "test/test_gem_commands_sources_command.rb", "test/test_gem_commands_specification_command.rb", "test/test_gem_commands_stale_command.rb", "test/test_gem_commands_uninstall_command.rb", "test/test_gem_commands_unpack_command.rb", "test/test_gem_commands_update_command.rb", "test/test_gem_commands_which_command.rb", "test/test_gem_config_file.rb", "test/test_gem_dependency.rb", "test/test_gem_dependency_installer.rb", "test/test_gem_dependency_list.rb", "test/test_gem_doc_manager.rb", "test/test_gem_ext_configure_builder.rb", "test/test_gem_ext_ext_conf_builder.rb", "test/test_gem_ext_rake_builder.rb", "test/test_gem_format.rb", "test/test_gem_gem_path_searcher.rb", "test/test_gem_gem_runner.rb", "test/test_gem_gemcutter_utilities.rb", "test/test_gem_indexer.rb", "test/test_gem_install_update_options.rb", "test/test_gem_installer.rb", "test/test_gem_local_remote_options.rb", "test/test_gem_package_tar_header.rb", "test/test_gem_package_tar_input.rb", "test/test_gem_package_tar_output.rb", "test/test_gem_package_tar_reader.rb", "test/test_gem_package_tar_reader_entry.rb", "test/test_gem_package_tar_writer.rb", "test/test_gem_package_task.rb", "test/test_gem_platform.rb", "test/test_gem_remote_fetcher.rb", "test/test_gem_requirement.rb", "test/test_gem_server.rb", "test/test_gem_source_index.rb", "test/test_gem_spec_fetcher.rb", "test/test_gem_specification.rb", "test/test_gem_stream_ui.rb", "test/test_gem_uninstaller.rb", "test/test_gem_validator.rb", "test/test_gem_version.rb", "test/test_gem_version_option.rb", "test/test_kernel.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
