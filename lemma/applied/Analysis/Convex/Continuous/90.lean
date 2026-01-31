import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConvexOn.isBoundedUnder_on_compact
    (hf : ConvexOn ℝ C f)
    (hC : IsCompact C)
    [DecidablePred (· ∈ C)] :
    (Filter.cocompact E).IsBoundedUnder (· ≤ ·) (fun x => if x ∈ C then f x else 0) := by
  -- Choose 0 as an upper bound eventually
  refine ⟨0, ?_⟩
  -- We need: {x | ite _ _ _ ≤ 0} ∈ cocompact E
  refine Filter.mem_cocompact.mpr ?_
  -- Use C itself as the compact set whose complement is contained in our set
  refine ⟨C, hC, ?_⟩
  -- Show that outside C, the function equals 0, hence ≤ 0
  intro x hx
  -- Convert membership in Cᶜ to ¬ x ∈ C
  have hx' : x ∉ C := by
    simpa using hx
  -- Now the `if` simplifies to 0, and 0 ≤ 0 is trivial
  simp [hx']