case config['execjs']
when 'no'
    #recipes.delete 'execjs'
    say_wizard "Execjs recipe skipped, will use systemwide js engine."
when 'therubyracer'
    gem 'therubyracer', :platform => 'ruby'
when 'rhino'
    gem 'rhino'
when 'johnson'
    gem 'johnson'
when 'mustang'
    gem 'mustang'
end

__END__

name: Execjs
description: Allow selection of runtime engine for execjs
author: Dave Foster <daf@minuslab.net>

category: other

config:
    - execjs:
        type: multiple_choice
        prompt: Which runtime engine would you like to use for execjs?
        choices: [["None/Use system (nodejs etc)", no], ["therubyracer", therubyracer], ["therubyrhino", rhino], ["Johnson", johnson], ["Mustang", mustang]]


