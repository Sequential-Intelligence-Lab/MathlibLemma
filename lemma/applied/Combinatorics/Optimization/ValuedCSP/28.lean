import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma comp_surjective (f : β → γ) (g : α → β)
    (hf : Function.Surjective f) (hg : Function.Surjective g) :
    Function.Surjective (fun x => f (g x)) := by
  intro z
  rcases hf z with ⟨y, hy⟩
  rcases hg y with ⟨x, hx⟩
  refine ⟨x, ?_⟩
  -- Rewrite step by step using the equalities from surjectivity
  simpa [hx, hy]