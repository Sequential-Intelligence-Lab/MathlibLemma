import Mathlib

open scoped MeasureTheory
open MeasureTheory

lemma eLpNorm'_eq_of_eq_on
    {α E} [MeasurableSpace α] [SeminormedAddCommGroup E]
    {μ : MeasureTheory.Measure α} {f g : α → E} {q : ℝ} {s : Set α}
    (hset : μ sᶜ = 0) (hfg : ∀ x ∈ s, f x = g x) :
    MeasureTheory.eLpNorm' f q μ = MeasureTheory.eLpNorm' g q μ := by
  classical
  -- Step 1: the set where f and g differ is contained in sᶜ
  have hsubset : {x | f x ≠ g x} ⊆ sᶜ := by
    intro x hx
    -- hx : f x ≠ g x
    by_contra hx_not
    -- hx_not : x ∉ sᶜ
    have hx_s : x ∈ s := by
      -- rewrite membership in the complement
      have hx' : x ∉ sᶜ := hx_not
      simpa [Set.mem_compl] using hx'
    -- On s, f = g
    have h_eq : f x = g x := hfg x hx_s
    exact hx (by simpa [h_eq])
  -- Step 2: this difference set has measure zero
  have hμ_diff_zero : μ {x | f x ≠ g x} = 0 :=
    MeasureTheory.measure_mono_null hsubset hset
  -- Step 3: derive a.e. equality f =ᵐ[μ] g
  have h : ∀ᵐ x ∂ μ, f x = g x := by
    refine (MeasureTheory.ae_iff.2 ?_)
    -- turn the goal into the measure of {x | f x ≠ g x}
    change μ {x | ¬ (f x = g x)} = 0
    simpa using hμ_diff_zero
  have hfg_ae : f =ᵐ[μ] g := by
    -- rewrite goal into the same form as `h`
    change (∀ᵐ x ∂ μ, f x = g x)
    exact h
  -- Step 4: use eLpNorm' invariance under a.e. equality
  exact MeasureTheory.eLpNorm'_congr_ae hfg_ae