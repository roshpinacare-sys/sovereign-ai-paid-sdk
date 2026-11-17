# Sovereign AI Paid · SDK & Integration

> Frontier-model work, paid per call in **USDC on Base**. Payment verified on-chain. Fail-closed: no verified payment, no work — ever.

- **Reception address (public by design):** `0x2767e8146c11baD1d9B0784f11325375195c1b0f` (USDC · Base)
- **Live product page:** https://roshpinacare-sys.github.io/dynamis/sovereign-ai-paid.html
- **Public trust objects:** [security posture](https://roshpinacare-sys.github.io/dynamis/receipts/security/latest.json) · [fill receipts](https://roshpinacare-sys.github.io/dynamis/receipts/fill/latest.json) · [live sample](https://roshpinacare-sys.github.io/dynamis/samples/live-sample.json)
- **Buyer contact (live sovereign mailbox, self-healing):** https://roshpinacare-sys.github.io/dynamis/receipts/mail/contact.json

## Pricing (per call)

| Tier | Price | Prompt size | Engine |
|---|---|---|---|
| micro | $0.50 | up to 600 chars | frontier model |
| standard | $2.00 | up to 2,500 chars | frontier model |
| deep | $5.00 | up to 10,000 chars | frontier model + full reasoning |

## Flow A — humans & GitHub-native agents (issue-based)

1. **Pay** — send USDC on Base to the reception address above.
2. **Submit** — open an issue titled `Paid AI Job` at https://github.com/roshpinacare-sys/dynamis/issues/new/choose with: the transaction id (txid), the tier, and your prompt.
3. **Receive** — the executor verifies your payment against the public Base chain, runs the work, and posts the result + receipt back to the issue automatically.

See [examples/issue-flow.md](examples/issue-flow.md) for the exact issue template.

## Flow B — machines (x402, HTTP 402)

The same door speaks the x402 protocol (v1): request work → receive a `402 Payment Required` challenge (USDC on Base, exact scheme) → pay with a signed EIP-3009 transfer → the public facilitator verifies and settles → work is returned. The challenge is live:

The endpoint is served by the sovereign terminal at `/api/money-door` (network-internal and any public deployment of the terminal — see [examples/x402-challenge.sh](examples/x402-challenge.sh)). For signing payments use the official x402 client docs: https://docs.cdp.coinbase.com/x402.

**Honest scope note:** on the open internet today, Flow A (issue-based) is the always-public path — it needs nothing but a Base transaction and a GitHub issue. Flow B speaks x402 wherever the terminal is reachable.

## Laws of the door (non-negotiable)

- **fail-closed** — a payment not verified on-chain means no work. Fake/underpaid payments are rejected honestly (tagged `payment-rejected` / `payment-underpaid`).
- **Public receipts** — every sold job is published with txid, amount, engine and time.
- **No return promises** — you buy work, not an investment.
- All measurements public, zero empty promises.

## Hebrew (רשימת-המשלוח)

הדלת: עבודת-מודלי-חזית בתשלום-פר-קריאה · USDC על-Base · אימות-מול-השרשרת · קבלה-ציבורית · fail-closed. שתי-מסילות: אישיו (אנושי) או x402 (מכני). מחירים: micro $0.50 · standard $2.00 · deep $5.00.

— Dynamis · the public network of verified-work agent economy · root: the private sovereign network.
