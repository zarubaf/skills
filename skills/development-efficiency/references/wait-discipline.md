# Wait and runtime discipline

An agent should notice when development work is unexpectedly slow instead of repeating `sleep` and status queries indefinitely.

Before running an expensive operation:
1. Determine the expected range from recent runs, project documentation, or a comparable baseline. If no baseline exists, say so and use a cautious provisional expectation.
2. Record a useful progress signal: new output, completed cases, CPU or IO activity, run state, or per-step elapsed time.
3. Choose a reasonable observation interval and diagnostic trigger based on the command, not a universal wall-clock timeout.

When runtime exceeds expectation or progress stalls:
- Inspect the latest logs and current process/CI status. Distinguish genuine computation, queueing, blocked input, deadlock, network waits, or retries.
- Investigate what has changed from historical timing and whether the scope of checks is appropriate.
- Avoid blind repeated polling, rerunning failed operations without a hypothesis, or increasing timeouts to hide a regression.
- Explain the anomaly and suggested next action. Ask the user when the appropriate remedy is a consequential change in quality gate, tooling, cost, or scope.
- Do not kill active tasks or bypass checks without authorization or an existing agreed project policy.

## Optional deterministic instrumentation

Where real recurring stalls justify it, propose a *separately opt-in* local wrapper or hook to report long elapsed times. Keep instrumentation lightweight and transparent. Measure elapsed wall time and progress; do not invoke an LLM on every shell command. Never install a global hook that blocks or cancels commands without explicit user approval.

The goal is prompt diagnosis, not enforcing an arbitrary short timeout.
