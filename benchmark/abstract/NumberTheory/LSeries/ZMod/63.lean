import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
lemma isPreconnected_of_isConnected_compl_countable
    {s : Set ℂ} (hs : (sᶜ).Countable) :
    IsPreconnected s := by
  sorry
