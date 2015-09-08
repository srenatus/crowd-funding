#\ --host 0.0.0.0
require 'rack/accept'
require 'rack-locale-root-redirect'

use Rack::Accept
use Rack::LocaleRootRedirect, de: '/index.html', en: '/en/index.html'

run Rack::File.new('build')
