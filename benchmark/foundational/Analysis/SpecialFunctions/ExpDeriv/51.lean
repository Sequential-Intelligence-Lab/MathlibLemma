import Mathlib

theorem Complex.exp_injective_on_strip :
    Set.InjOn Complex.exp {z : ℂ | z.im ∈ Set.Ioc (-Real.pi) Real.pi} := by
  sorry
