import Mathlib

/-- If a function has zero `dslope` everywhere on a ball, then it is constant on that ball. -/
lemma eqOn_const_of_dslope_eq_zero_on_ball {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    {f : ℂ → E} {c : ℂ} {R : ℝ} (hR : 0 < R)
    (hzero : Set.EqOn (dslope f c) (fun _ => 0) (Metric.ball c R)) :
    ∀ z ∈ Metric.ball c R, f z = f c := by
  sorry
