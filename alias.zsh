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
mikke(){ find ./ | xargs grep --color $1 }
swap() {
  if [ $# -ne 2 ]; then
    echo "select two file!";
    return;
  fi
  if [ -d $1 -o -d $2 ]; then
    echo "can not use dir!";
    return;
  fi
  if [ ! -f $1 -o ! -f $2 ]; then
    echo "file not found!";
    return;
  fi
  mv $1 tmp;
  mv $2 $1;
  mv tmp $2;
}
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
