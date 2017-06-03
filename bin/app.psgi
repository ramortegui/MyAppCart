#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use MyAppCart;

MyAppCart->to_app;

use Plack::Builder;

builder {
    enable 'Deflater';
    MyAppCart->to_app;
}



=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use MyAppCart;
use Plack::Builder;

builder {
    enable 'Deflater';
    MyAppCart->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use MyAppCart;
use MyAppCart_admin;

builder {
    mount '/'      => MyAppCart->to_app;
    mount '/admin'      => MyAppCart_admin->to_app;
}

=end comment

=cut

