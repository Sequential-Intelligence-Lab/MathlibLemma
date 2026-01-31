import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma FractionalOperation.tt_congr {ι : Type*}
    {ω : FractionalOperation D m} {x y : Fin m → ι → D}
    (h : ∀ i j, x i j = y i j) :
    FractionalOperation.tt ω x = FractionalOperation.tt ω y := by
  -- First show x = y by function extensionality
  have hx : x = y := by
    funext i
    funext j
    exact h i j
  -- Then rewrite using this equality
  simpa [hx]