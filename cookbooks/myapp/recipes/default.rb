application "myapp" do
  packages ["make","libxslt-dev","libxml2-dev", "git"]

  path "/var/www"
  owner "vagrant"
  group "vagrant"

  # Used for testing, allows a complete run even if your application is not starting
  #restart_command "true"
  repository "http://github.com/lvnilesh/myapp.git"
  revision "master"

  deploy_key "-----BEGIN DSA PRIVATE KEY-----MIIBuwIBAAKBgQDzZOPkyG7XY0H5AdVPnAphN7twYzs56U/Be4JOgb60aVahK0MFnBrpSnwQTICTvVUXchpYDt1mKmLWoJcOxiRo18JoPbttRQVf9uEKea4trAq1/OPG17Lby2Zntsui6511eOVEo1wzKxVFiuPjYDIWEYpzT9X7sVJ7G8q4WirvAwIVANLdwqfCZL/AlzWrtSe0vGkL0D27AoGATXJ189XVVKrHlb3r9ZR91StELVdoBtuoPwPFt9zeWrWBg793pMleMZkdYeWMZe6XF22kSWkSKhu5E12qak1w1dPvEvNURe25pS0yJ4ISNZAVW9bnqC0N89xZ4uJtQbTNCELYETOcvioDPQ5IFwq4RkwppIzQTnrbZTWdarqJSmICgYEA8Dye35ztHUMiHHk0QqvM2kvbeUgTvDN+seIZIhz/MQ5Qv9LEuPt4kJ2hDzLoVamihm/0elwl1N4rTPKzYbM9miS3X3LQjDpv/F+xb15Z0dEOR35vHkX8DFUQwUBZAokDMVvHdhAOr+8YAcd92Pbx3kcfIFzN2wIikUR6wXGP/GMCFArI4KCINtGwe1LXYJxER0upyZxG-----END DSA PRIVATE KEY-----\n"

  rails do
    database do
      adapter "mysql"
      host "localhost"
      database "database"
      username "username"
      password "password"
    end

    gems ["bundler"]

    # assets are precompiled and in git, change to true if not
    precompile_assets false
    bundler true
  end
  unicorn do
  end
end