import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]
variable {X : Type*} [TopologicalSpace X]
variable {Y : Type*} [TopologicalSpace Y]
variable {Z : Type*} [TopologicalSpace Z]

variable {ι : Type*}

/-! ## Basic filter / topology lemmas -/
lemma Filter.Eventually.filter_mono_inter_left {α : Type*} {l₁ l₂ l₃ : Filter α}
    {p : α → Prop}
    (h : Filter.Eventually p (l₁ ⊓ l₂)) (hle : l₁ ≤ l₃) :
    Filter.Eventually p (l₃ ⊓ l₂) := by
  sorry
