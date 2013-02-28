#
# Load `quill_npm_*` environment variables
#
AUTH=$(printf '%b:%b' $q_npm_username $q_npm_password | base64)

#
# Copy quillconf to $HOME/.quillconf
#
cp ../templates/quillconf $HOME/.quillconf

#
# Install forever from npm
#
npm install forever -g

#
# Move npmrc to $HOME/.npmrc
#
cp ../templates/npmrc $HOME/.npmrc
echo -e "\n_auth = $AUTH" >> $HOME/.npmrc

#
# Install quill from internal npm
#
npm install quill-cli -g