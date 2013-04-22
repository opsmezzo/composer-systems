#
# Start bin/composer with forever
#
forever start $HOME/quill-composer/bin/composer -e $q_env --config $HOME/config/composer.json -p $q_composer_port
