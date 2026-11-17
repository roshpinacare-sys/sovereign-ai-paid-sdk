# Paid AI Job — issue template (Flow A)

Open a new issue at https://github.com/roshpinacare-sys/dynamis/issues/new/choose and pick **Paid AI Job**, then fill:

```markdown
### Payment txid (Base network)
0x…your transaction hash…

### Tier — מדרגת-העבודה
micro | standard | deep

### Prompt
Your prompt text (respect the tier's size limit).

### Callback (optional)
How/where to publish the result if not the issue itself.
```

What happens next (all automatic, all measured):

1. The executor reads the txid and verifies the USDC transfer on the public Base chain against the reception network's addresses.
2. Wrong network / wrong token / partial amount → the issue is closed honestly with a rejection tag (`payment-rejected` / `payment-underpaid`). No work, no lies.
3. Verified payment → the work runs on the engine matched to the tier, and the result + receipt (txid, amount, engine, time) are posted to the issue.
