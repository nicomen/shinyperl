#!/usr/bin/env perl # [% title = 'Proper Try/Catch'; BLOCK code %]

use Feature::Compat::Try;
 
sub foo {
   try {
      attempt_a_thing();
      return "success";
   }
   catch ($e) {
      warn "It failed - $e";
      return "failure";
   }
}

#! [% END %]
