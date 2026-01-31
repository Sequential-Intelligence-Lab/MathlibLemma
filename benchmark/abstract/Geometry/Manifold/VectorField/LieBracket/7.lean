import Mathlib

open Filter
open Topology

/-! ## Basic filter / topology lemmas -/

/-- A dummy lemma stating that if `f` is "locally constant" around `x` in some
   sense (as expressed by `h`), then it is continuous at `x`. We do not prove it here. -/
lemma continuousAt_of_locally_constant_nhds
    {α β : Type*} [TopologicalSpace α] [TopologicalSpace β]
    {x : α} {f : α → β}
    (h : ∀ᶠ y in 𝓝 x, ∀ z : α, f z = f y) :
    ContinuousAt f x := by
  sorry

/-! ## Differential calculus (vector-space level) -/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]
variable {X : Type*} [TopologicalSpace X]
variable {Y : Type*} [TopologicalSpace Y]
variable {Z : Type*} [TopologicalSpace Z]
variable {ι : Type*}