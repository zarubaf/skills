# Engineering principles

Use judgment. These are decision constraints, not slogans.

1. **Separation of concerns** — distinguish UI, domain, persistence, infrastructure, and other genuinely separate concerns.
2. **Encapsulation and information hiding** — expose small, stable contracts; keep implementation details private.
3. **High cohesion, loose coupling** — colocate behavior that changes together; use narrow boundaries between independent parts.
4. **DRY knowledge** — keep one authoritative representation of a fact or rule; do not abstract every similar line.
5. **KISS** — choose the simplest design that meets current constraints.
6. **Single responsibility** — minimize unrelated reasons to change a component.
7. **Depend on abstractions** — keep policy independent of replaceable implementation details where this genuinely helps.
8. **YAGNI** — avoid speculative features, abstraction layers, and extension hooks.
9. **Composition over inheritance** — prefer assembling focused capabilities rather than fragile hierarchies.
10. **Open/closed with discipline** — extend stable seams when actual repeated change justifies them; do not design speculative plugin systems.
11. **Honorable principles** — Law of Demeter, fail fast, illegal states unrepresentable, optimize for deletion.
12. **Unix philosophy** — do one thing well and compose.

**Conflict rule:** when principles collide, select the trade-off that reduces future cost in the current codebase.

**Refactor-first rule:** if the current structure obstructs a requested behavioral change, refactor the affected structure first with behavior-preserving checks, then change behavior. Avoid unrelated refactoring.

**Quality rule:** reuse and run repository-native formatting, linting, type checks, and tests. Suggest missing safeguards; never add redundant tooling just to satisfy a checklist.
