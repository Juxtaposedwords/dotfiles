#!/usr/local/bin/bash
# Ignore if we're not on OSX
[[ "$OSTYPE" =~ ^darwin ]] || exit 0
echo "Pianobar Configuration:"
# So let's set the username (Even though we don't need to)
read -e -p "Enter your Pandora Username: " PANDORA_USERNAME
sed -i "s/\(user\ =\ \).*/\1$PANDORA_USERNAME/" $HOME/.config/pianobar/config

# Now let's go and set the pandora password
read -e -p "Enter your Pandora Password: " PANDORA_PASSWORD
sed -i "s/\(password\ =\ \).*/\1$PANDORA_PASSWORD/" $HOME/.config/pianobar/config

# Now let's go and set the event command (this makes pianobar use event notifier to tell us what we're listening)
# We're really just doing this as pianobar can't handle the ~symbol in the config
USER_HOME=$(echo "$HOME")
sed -i  "s|\(event_command\ =\).*|\1\ $USER_HOME/.config/pianobar/eventcommand.sh|" $HOME/.config/pianobar/config