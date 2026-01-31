import Mathlib

/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma LFunction_residue_at_one_unique {N : ℕ} [NeZero N]
    (Φ : ZMod N → ℂ) (c : ℂ)
    (hres :
      Filter.Tendsto (fun s : ℂ ↦ (s - 1) * ZMod.LFunction Φ s)
        (nhdsWithin (1 : ℂ) ({1}ᶜ))
        (nhds c)) :
    c = ∑ j : ZMod N, Φ j / N := by
  sorry