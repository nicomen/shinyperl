## CONTRIBUTING ##

If you think something is wrong, please file an issue.

If you want to add a snippet of shiny perl add a pull request with an addition in the `snippets` directory.

### Snippet format ###

The intention is that any file in the snippet should be able to execute and be valid.

The format is basically:

```perl
#!/usr/bin/env perl # [% title = 'Title of snippet'; BLOCK code %]

… Valid Perl code …

#! [% END %]
```

The file will be processed by Template::Toolkit and auto-generated into index.html which in turn will be served as-is.

## BUILDING ##

./build.sh # To generate a new index.html. Template::Toolkit's tpage command has to be in path

## TESTING ##

prove -lvr t # To check syntax (potential modules might need to be installed


