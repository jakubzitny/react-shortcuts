ReactDOM = require('react-dom')
require './main.less'
keymap = require './keymap'
App = require './app'
ShortcutManager = require '../src'

shortcutManager = new ShortcutManager(keymap)

# Just for testing
window.shortcutManager = shortcutManager

element = React.createElement(App, shortcuts: shortcutManager)
ReactDOM.render(element, document.getElementById('app'))
