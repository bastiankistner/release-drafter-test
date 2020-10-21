until gh pr merge feat/KEY-1_service-a --squash; do
  echo could not yet merge feat/KEY-1_service-a, retrying in 10 seconds...
  sleep 10
done

until gh pr merge fix/KEY-2_service-b --squash; do
  echo could not yet merge fix/KEY-2_service-b, retrying in 10 seconds...
  sleep 10
done

until gh pr merge chore/KEY-3_service-c --squash; do
  echo could not yet merge chore/KEY-3_service-c, retrying in 10 seconds...
  sleep 10
done
