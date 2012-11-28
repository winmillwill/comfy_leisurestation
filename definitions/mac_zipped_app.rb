define :mac_zipped_app, :app_path_base => "/Applications" do

  app_name = params[:name]
  zip_name = params[:zip_name] ? params[:zip_name] : app_name
  app_path = "#{params[:app_path_base]}/#{app_name}.app"

  unless File.exists?(app_path)

    remote_file "#{Chef::Config[:file_cache_path]}/#{zip_name}.zip" do
      source params[:source]
      owner WS_USER
    end

    execute "unzip #{app_name}" do
      command "unzip #{Chef::Config[:file_cache_path]}/#{zip_name}.zip -d #{Chef::Config[:file_cache_path]}/"
      user WS_USER
    end

    execute "copy #{app_name} to /Applications" do
      command "mv #{Chef::Config[:file_cache_path]}/#{app_name}.app #{Regexp.escape(node["propane_app_path"])}"
      user WS_USER
      group "admin"
    end

    ruby_block "test to see if #{app_name}.app was installed" do
      block do
        raise "#{app_name}.app was not installed" unless File.exists?(app_path)
      end
    end

  end

end
