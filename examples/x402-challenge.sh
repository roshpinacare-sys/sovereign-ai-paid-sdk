#!/usr/bin/env bash
# §56 · הדגמת-אתגר-402 החי מדלת-הכסף (x402 v1 · USDC/Base · exact).
# ההדגמה מציגה את האתגר בלבד — חתימת-התשלום נעשית-בספריית-הלקוח-הרשמית
# של x402 (https://docs.cdp.coinbase.com/x402) עם-מפתח-ה-EVM-שלך.
set -euo pipefail

DOOR="${DOOR:-http://127.0.0.1:3000/api/money-door}"

echo "→ POST $DOOR (tier=standard)"
RESP=$(curl -s -X POST "$DOOR" \
  -H 'Content-Type: application/json' \
  -d '{"tier":"standard","prompt":"demo of the live 402 challenge"}')

echo "$RESP" | head -40
echo
echo "← expected: 402 payment_required + X-Payments-Required (x402Version=1, scheme=exact, USDC/Base)."
echo "  Pay the challenge with an x402 client (docs.cdp.coinbase.com/x402) — the public facilitator verifies and settles."
