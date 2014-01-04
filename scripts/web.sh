browser=$(which xdg-open || which gnome-open)

function browse_to()
{
  url=$1

  if [[ ${url:0:7} != "http://" ]] && [[ ${url:0:8} != "https://" ]]
  then
    url="http://$url"
  fi

  $browser "$url" > /dev/null &
}

function google_search()
{
  terms=${1// /+}
  google_search_url="http://google.com/search?q=$terms"

  browse_to $google_search_url
}
