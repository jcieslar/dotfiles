#!/usr/bin/env bash
input=$(cat)

# Orca dostaje dane o limitach przez ten sam statusLine
orca="$HOME/.orca/agent-hooks/claude-statusline.sh"
if [ -x "$orca" ]; then
  printf '%s' "$input" | /bin/sh "$orca" >/dev/null 2>&1 &
fi

# Zaokrąglanie w jq, bo printf w bashu przy polskim locale nie parsuje "23.5"
read -r pct5h resets5h pct7d resets7d < <(jq -r '
  def window: [(.used_percentage | if . == null then "-" else round end), .resets_at // "-"];
  .rate_limits | (.five_hour | window) + (.seven_day | window) | @tsv
' <<<"$input")

now=$(date +%s)

# Etykieta konta to nazwa aliasu z bash_aliases: cl (~/.claude-pl) albo ai (domyślny config)
case "${CLAUDE_CONFIG_DIR:-}" in
  */.claude-pl | */.claude-pl/) account="cl" ;;
  *) account="ai" ;;
esac

out="Claude \033[38;5;173m✻\033[0m $account"

if [ "$pct5h" = "-" ] || [ "$resets5h" = "-" ] || [ -z "$pct5h" ]; then
  out+=" --"
else
  left=$((resets5h - now))
  [ "$left" -lt 0 ] && left=0
  out+=$(printf ' %d%%%% %dh %02dm' "$pct5h" $((left / 3600)) $((left % 3600 / 60)))
fi

if [ "$pct7d" != "-" ] && [ "$resets7d" != "-" ] && [ -n "$pct7d" ]; then
  left=$((resets7d - now))
  [ "$left" -lt 0 ] && left=0
  out+=$(printf ' · 7d %d%%%% %dd %dh' "$pct7d" $((left / 86400)) $((left % 86400 / 3600)))
fi

printf "$out\n"
