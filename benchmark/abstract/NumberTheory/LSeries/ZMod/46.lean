import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma ZMod.Odd.comp_zModHom {N M : ℕ} [NeZero N] [NeZero M]
    {f : ZMod M → ℂ} (hf : f.Odd)
    (φ : ZMod N →+ ZMod M) :
    (fun x ↦ f (φ x)).Odd := by
  sorry
