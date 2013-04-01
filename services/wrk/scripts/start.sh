#!/usr/bin/env bash

if [ -z $q_wrk_url ]; then
  echo "q_wrk_url not specified"
  exit 1
fi

echo "starting wrk..."
wrk -t$q_wrk_threads -c$q_wrk_conc -r$q_wrk_requests $q_wrk_url
echo "wrk complete"