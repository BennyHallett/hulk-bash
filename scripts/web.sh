browser=$(which xdg-open || which gnome-open)

function browse_to()
{
  url=$1

  if [[ ${url:0:7} != "http://" ]] && [[ ${url:0:8} != "https://" ]]
  then
    url="http://$url"
  fi

  $browser "$url" > /dev/null
}
