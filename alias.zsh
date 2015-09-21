alias ls='ls -AGp'
alias cl='clear'
alias ps='ps aux'
alias mkdir='mkdir -p'
alias hist='history 1'
alias pmv='perl -le '"'"'for $module (@ARGV) { eval "use $module"; print "$module ", ${"$module\::VERSION"} || "not found" }'"'"
alias start='./script/*_server.pl -r -p 3004'
alias create='./script/*_create.pl'
alias mp='measureperl'
alias repl='perl -le "use Carp::Reply qw();Carp::Reply::repl();"'
startc() { ./script/*_server.pl -r -p $1; }
plackc() { plackup -p $1 -e 'use Plack::App::Directory; Plack::App::Directory->new({root => "./cover_db"})->to_app'; }
cd ()
{
  builtin cd "$@" && ls
}
mkcd ()
{
  mkdir "$@" && cd "$@"
}
