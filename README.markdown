Gumroad
======

Gumroad is a Ruby wrapper for the Gumroad API.

**This gem is a work in progress. Contributions are welcome.**

Authentication
--------
``` ruby
client = Gumroad.new(username, password)
```

If you feel the need to, you can revoke the session.

``` ruby
client.destroy
```

Links
--------
``` ruby
links = client.links.all
```

``` ruby
link = client.links.find(id)
```

You now have a Gumroad::Link object. You can call methods such as `link.name` and `link.url`.

It's pretty easy to create a link.

``` ruby
client.links.create(name: '@maxstoller', url: 'http://twitter.com/maxstoller', description: 'A link to @maxstoller.', price: '100')
```

Thanks
--------
* GroupMe's [quimby](https://github.com/groupme/quimby) gem. I took their object approach when writing this gem.