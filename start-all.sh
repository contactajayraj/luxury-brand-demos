#!/bin/bash

ROOT="$(cd "$(dirname "$0")" && pwd)"

# Kill anything already on these ports
lsof -ti:3000,3001,3002,3004,3005,3006 | xargs kill -9 2>/dev/null
sleep 1

# ── Start all servers ────────────────────────────────────────────────
(cd "$ROOT/Lumis"              && node server.js) &
(cd "$ROOT/auratek"            && node server.js) &
(cd "$ROOT/tea"                && node server.js) &
(cd "$ROOT/Lumis -1"           && node server.js) &
(cd "$ROOT/winery"             && node server.js) &
(cd "$ROOT/noir-ember-project" && node server.js) &

sleep 1

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  All servers running:"
echo ""
echo "  LUMIS          → http://localhost:3000"
echo "  AURATEK        → http://localhost:3001"
echo "  LUXE TEA       → http://localhost:3002"
echo "  LUMIS (v2)     → http://localhost:3004"
echo "  ESTATE WINERY  → http://localhost:3005"
echo "  NOIR & EMBER   → http://localhost:3006"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  Press Ctrl+C to stop all servers."
echo ""

wait
