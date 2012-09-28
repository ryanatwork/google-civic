# Google Civic API [![Build Status](https://secure.travis-ci.org/ryanatwork/google-civic.png)](http://travis-ci.org/ryanatwork/google-civic)
A Ruby wrapper for the Google Civic API at
[https://developers.google.com/civic-information/](https://developers.google.com/civic-information/)

## Does your project or organization use this gem?
Add it to the [apps](http://github.com/ryanatwork/google-civic/wiki/apps) wiki!

## Installation
    gem install google-civic

## Documentation
[http://rdoc.info/gems/google-civic](http://rdoc.info/gems/google-civic)

## Obtain your API Key
Make sure to obtain your API key from here [https://developers.google.com/civic-information/docs/using_api](https://developers.google.com/civic-information/docs/using_api)


## Usage Examples
    require 'google-civic'

    @client = GoogleCivic.new(:key => "abc123")

    #elections
    a = @client.elections
    a.elections.first # => #<Hashie::Mash electionDay="2013-06-06" id="2000" name="VIP Test Election">

    # Voter info
    b = @client.voter_info(2000, '1263 Pacific Ave. Kansas City KS')
    b.pollingLocations.first.address # => #<Hashie::Mash city="Kansas City" line1="100 S 20th St" line2="" line3="" locationName="National Guard Armory" state="KS" zip="66102 ">

## Contributing
In the spirit of [free software][free-sw], **everyone** is encouraged to help improve
this project.

[free-sw]: http://www.fsf.org/licensing/essays/free-sw.html

Here are some ways *you* can contribute:

* by using alpha, beta, and prerelease versions
* by reporting bugs
* by suggesting new features
* by writing or editing documentation
* by writing specifications
* by writing code (**no patch is too small**: fix typos, add comments, clean up
  inconsistent whitespace)
* by refactoring code
* by fixing [issues][]
* by reviewing patches

[issues]: http://github.com/ryanatwork/google-civic/issues

## Submitting an Issue
We use the [GitHub issue tracker][issues] to track bugs and features. Before
submitting a bug report or feature request, check to make sure it hasn't
already been submitted. When submitting a bug report, please include a [Gist][]
that includes a stack trace and any details that may be necessary to reproduce
the bug, including your gem version, Ruby version, and operating system.
Ideally, a bug report should include a pull request with failing specs.

[gist]: https://gist.github.com/

## Submitting a Pull Request
1. [Fork the repository.][fork]
2. [Create a topic branch.][branch]
3. Add specs for your unimplemented feature or bug fix.
4. Run `bundle exec rake spec`. If your specs pass, return to step 3.
5. Implement your feature or bug fix.
6. Run `bundle exec rake spec`. If your specs fail, return to step 5.
7. Run `open coverage/index.html`. If your changes are not completely covered
   by your tests, return to step 3.
8. Add documentation for your feature or bug fix.
9. Run `bundle exec rake yard`. If your changes are not 100% documented, go
   back to step 8.
10. Add, commit, and push your changes.
11. [Submit a pull request.][pr]

[fork]: http://help.github.com/fork-a-repo/
[branch]: http://learn.github.com/p/branching.html
[pr]: http://help.github.com/send-pull-requests/

## Copyright
Copyright (c) 2012 Ryan Resella. See [LICENSE][] for details.

[license]: https://github.com/ryanatwork/google-civic/blob/master/LICENSE.md

