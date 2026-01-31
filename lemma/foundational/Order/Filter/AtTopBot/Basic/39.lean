import Mathlib

lemma Filter.tendsto_atBot_iff_eventually_le {α β}
    [Preorder α] [IsDirected α (· ≥ ·)]
    [Preorder β] {f : α → β} {b : β} :
    Filter.Tendsto f Filter.atBot Filter.atBot ↔
      ∀ b₀, ∀ᶠ a in Filter.atBot, f a ≤ b₀ := by
  -- Unfold `atBot` on the codomain as an infimum of principal filters
  -- and use `tendsto_iInf` to characterize `Tendsto` to that infimum.
  -- In mathlib, for a `Preorder β`, `atBot` is definitionally
  -- `⨅ b₀ : β, Filter.principal {y | y ≤ b₀}`.
  -- So we can rewrite and then use `tendsto_iInf`.
  -- First, rewrite the target filter `Filter.atBot` on `β`.
  change Filter.Tendsto f Filter.atBot (⨅ b₀ : β, Filter.principal {y | y ≤ b₀}) ↔ _
  -- Use the `Tendsto`-to-infimum characterization.
  -- `tendsto_iInf` says:
  --   Tendsto f l (⨅ i, g i) ↔ ∀ i, Tendsto f l (g i)
  -- Here, `g b₀ = principal {y | y ≤ b₀}`.
  constructor
  · intro hf b₀
    -- From `hf : Tendsto f atBot (⨅ b₀, principal {y | y ≤ b₀})`,
    -- get `Tendsto f atBot (principal {y | y ≤ b₀})` for each `b₀`.
    have : Filter.Tendsto f Filter.atBot (Filter.principal {y : β | y ≤ b₀}) :=
      (Filter.tendsto_iInf.1 hf) b₀
    -- `Tendsto f atBot (principal s)` is equivalent to `∀ᶠ a in atBot, f a ∈ s`.
    -- Here, `s = {y | y ≤ b₀}`, so `f a ∈ s` is `f a ≤ b₀`.
    -- Use the characterization `tendsto_principal`:
    -- `Tendsto f l (principal s) ↔ ∀ᶠ a in l, f a ∈ s`.
    have hEvent :
        ∀ᶠ a in Filter.atBot, f a ∈ {y : β | y ≤ b₀} :=
      (Filter.tendsto_principal.1 this)
    -- Simplify membership in `{y | y ≤ b₀}` to the inequality `f a ≤ b₀`.
    simpa using hEvent
  · intro h
    -- We need to build `Tendsto f atBot (⨅ b₀, principal {y | y ≤ b₀})`.
    -- By `tendsto_iInf`, it suffices to show `Tendsto f atBot (principal {y | y ≤ b₀})`
    -- for each `b₀`.
    apply Filter.tendsto_iInf.2
    intro b₀
    -- Use the assumption `h : ∀ b₀, ∀ᶠ a in atBot, f a ≤ b₀`.
    have hEvent : ∀ᶠ a in Filter.atBot, f a ≤ b₀ := h b₀
    -- Turn this into `Tendsto f atBot (principal {y | y ≤ b₀})`
    -- using `tendsto_principal`.
    have : ∀ᶠ a in Filter.atBot, f a ∈ {y : β | y ≤ b₀} := by
      simpa using hEvent
    exact Filter.tendsto_principal.2 this