# Fake Jobvite ![Travis Badge][1]

[1]: https://travis-ci.org/adarsh/fake_jobvite.svg

This library helps build against
the JobVite API
without hitting the live servers.
It uses [WebMock][2]
to intercept the external HTTP requests
and return fake data.

[2]: https://github.com/bblimke/webmock

## Synopsis

```ruby
# Use Sinatra, for example
require 'sinatra/base'
require 'capybara_discoball'

# Here is our fake app
class FakeJobvite < Sinatra::Base
  get '/candidate' do |candidate|
    # Load the XML fixture here
  end
end

# Spin up the Rack app,
# then update the imaginary library we're
# using to point to the new URL.
Capybara::Discoball.spin(FakeJobvite) do |server|
  Jobvite.endpoint_url = server.url('/')
end
```


## Endpoints

### Base URL

    https://api.jobvite.com/
