use File::Spec;
use File::Basename qw(dirname);
my $basedir = File::Spec->rel2abs(File::Spec->catdir(dirname(__FILE__), '..'));
my $dbpath = File::Spec->catfile($basedir, 'db', 'oidc_lite_demo_client_development.db');
+{
    'DBI' => [
        "dbi:SQLite:dbname=$dbpath", '', '',
        +{
            sqlite_unicode => 1,
        }
    ],
    'Credentials' => {
        'Google' => {
            'client_id' => q{aaa},
            'client_secret' => q{bbb},
            'redirect_uri' => q{http://localhost:5000/google/callback},
            'scope' => q{openid email profile},
        },

        'Facebook' => {
            'redirect_uri' => q{http://localhost:5000/facebook/callback},
            'client_id' => q{aaa},
            'client_secret' => q{bbb},
            'scope' => q{email},
        },

        'Microsoft' => {
            'redirect_uri' => q{http://localhost:5000/microsoft/callback},
            'client_id' => q{aaa},
            'client_secret' => q{bbb},
            'scope' => q{wl.signin wl.basic wl.emails},
        },


        'YahooJapan' => {
            'redirect_uri' => q{http://localhost:5000/yahoo_japan/callback},
            'client_id' => q{aaa},
            'client_secret' => q{bbb},
            'scope' => q{openid email profile address},
        },

        'Sample' => {
            'authorization_endpoint' => 'http://localhost:5001/authorize',
            'token_endpoint' => 'http://localhost:5001/token',
            'userinfo_endpoint' => 'http://localhost:5001/userinfo',
            'client_id' => q{sample_client_id},
            'client_secret' => q{sample_client_secret},
            'redirect_uri' => q{http://localhost:5000/sample/callback},
            'scope' => q{openid email profile phone address},
        },
    },
};
