for dir in charts/*/; do
  dir=${dir%*/}
  chart_name="${dir##*/}"
  echo $chart_name
done