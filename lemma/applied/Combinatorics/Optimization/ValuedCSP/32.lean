import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma support_sub_eq_union_support {α} [AddGroup α] (f g : ι → α) :
    Function.support (fun i => f i - g i) ⊆
      Function.support f ∪ Function.support g := by
  intro i hi
  -- From membership in the support, get non-zeroness
  have hfg : f i - g i ≠ 0 := by
    simpa [Function.mem_support] using hi
  -- Show one of f i or g i is nonzero, by contradiction
  have h : f i ≠ 0 ∨ g i ≠ 0 := by
    by_contra h'
    push_neg at h'
    rcases h' with ⟨hf, hg⟩
    have : f i - g i = 0 := by
      simpa [hf, hg]
    exact hfg this
  -- Turn the disjunction into membership in the union of supports
  cases h with
  | inl hf =>
      exact Or.inl (by simpa [Function.mem_support] using hf)
  | inr hg =>
      exact Or.inr (by simpa [Function.mem_support] using hg)

/-! ### Finset / Fintype -/