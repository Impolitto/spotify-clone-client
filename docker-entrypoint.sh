#!/bin/sh
set -e

# Generate env.js from container environment variables (readable by the SPA)
cat > /usr/share/nginx/html/env.js <<EOF
window._env_ = {
  REACT_APP_SPOTIFY_CLIENT_ID: "${REACT_APP_SPOTIFY_CLIENT_ID:-}",
  REACT_APP_SPOTIFY_REDIRECT_URI: "${REACT_APP_SPOTIFY_REDIRECT_URI:-}"
};
EOF

exec "$@"