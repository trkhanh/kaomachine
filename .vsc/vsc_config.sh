# VSC config

#List the installed extensions.
code --list-extensions

#Show versions of installed extensions, when using --list-extension.
code --show-versions

#Uninstalls an extension.
#code --uninstall-extension (<extension-id> | <extension-vsix-path>)

#Enables proposed API features for extensions. Can receive one or more extension IDs to enable individually.
#code --enable-proposed-api (<extension-id>)


###############################################################################
# uninstall vs extention                                                      #
###############################################################################

rm -rf ~/.vscode/extensions

###############################################################################
# install vs extention                                                      #
###############################################################################

# Code format
code --install-extension esbenp.prettier-vscode
# GIT support
code --install-extension eamodio.gitlens
# Open Browser HTML
code --install-extension techer.open-in-browser
# TODO markdown
code --install-extension wayou.vscode-todo-highlight
# Live share - Pair code
code --install-extension MS-vsliveshare.vsliveshare
# Client API
code --instlal-extension humao.rest-client
# Eye driven
    # Bracket Pair Colorizer
     code --install-extension CoenraadS.bracket-pair-colorizer    
# Clean code
    # Lint
    code --install-extension dbaeumer.vscode-eslint
    # JS support
    code --install-extension WallabyJs.quokka-vscode
    # Spell check
    code --install-extension streetsidesoftware.code-spell-checker
    # Complexity check
    code --install-extension kisstkondoros.vscode-codemetrics

# Package management
    # npm
     code --install-extension christian-kohler.npm-intellisense	


# Path Intellisence
code --install-extension christian-kohler.path-intellisense

# Web framework
 # ES7 React/Redux/GraphQL/React-Native snippets
 code --install-extension dsznajder.es7-react-js-snippets	

# Theme 
code --install-extension xaver.theme-ysgrifennwr	
code --install-extension PKief.material-icon-theme