require "heroku/command/config"

class Heroku::Command::Config

  # config:copy
  #
  # Copy one or more config vars from one app to another
  #
  def copy
    unless args.size > 1
      error("Usage: heroku config:copy <target app name> KEY1 [KEY2...]")
    end
    target_app = args.shift
    vars = api.get_config_vars(app).body.select {|key, value| args.include?(key.to_s)}
    vars.each {|k, v| puts k}

    api.put_config_vars(target_app, vars)
  end

end
