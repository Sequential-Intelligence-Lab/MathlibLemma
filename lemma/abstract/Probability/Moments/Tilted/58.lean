import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} [MeasurableSpace Ω] {μ ν : Measure Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- The mgf uniquely determines all moments when it is analytic in a neighborhood of the origin.

  NOTE: As of the current mathlib version, the analytic- and measure-theoretic machinery needed
  to establish this statement is not yet fully available. In particular, we would require:
  * a theorem stating that `mgf X μ` is real-analytic at `0` under the hypothesis
      `0 ∈ interior (integrableExpSet X μ)`;
  * a general result allowing us to interchange the n-fold derivative `deriv^[n]` and integration
    for the family `t ↦ Real.exp (t * X ω)`;
  * identification of the resulting expression with the moment `∫ ω, (X ω)^n ∂μ`.

  These theorems are non-trivial and not currently in mathlib, so the proof below indicates
  the structure and places where such results would be applied, but it uses `admit` instead of
  actual proofs. This lemma therefore cannot be completed without extending mathlib.
-/
lemma moment_from_mgf
    (n : ℕ)
    (h0 : 0 ∈ interior (integrableExpSet X μ)) :
    (∫ ω, (X ω)^n ∂μ)
      = (deriv^[n] (fun t ↦ mgf X μ t) 0) := by
  -- Sketch of the intended proof structure:

  -- 1. Show analyticity of mgf at 0 using the neighborhood of integrability.
  --    We would like something like:
  --    have hAnalytic : AnalyticAt ℝ (fun t => mgf X μ t) 0 := by
  --      -- apply a general "integral of an analytic family is analytic"
  --      admit
  have hAnalytic : AnalyticAt ℝ (fun t => mgf X μ t) 0 := by
    admit

  -- 2. Express the nth derivative at 0 by differentiating under the integral sign.
  --    For each ω, we know (classically) that the nth derivative of t ↦ exp (t * X ω)
  --    at 0 is (X ω)^n. So we want:
  --      (deriv^[n] (fun t => mgf X μ t) 0)
  --        = ∫ ω, (deriv^[n] (fun t => Real.exp (t * X ω)) 0) ∂μ
  --        = ∫ ω, (X ω)^n ∂μ.
  --
  --    This step requires a theorem allowing us to pass `deriv^[n]` under the integral sign,
  --    under suitable domination conditions (ensured by `h0` and integrability of exponentials
  --    with polynomial weights in a neighborhood of 0).
  have h_deriv_under_integral :
      (deriv^[n] (fun t => mgf X μ t) 0)
        = ∫ ω, (deriv^[n] (fun t => Real.exp (t * X ω)) 0) ∂μ := by
    admit

  -- 3. Identify the nth derivative of exp(t * X ω) at 0 as (X ω)^n.
  have h_pointwise :
      (fun ω => (deriv^[n] (fun t => Real.exp (t * X ω)) 0))
        = (fun ω => (X ω)^n) := by
    -- This identification is purely analytic in one variable; it follows from the known
    -- formula for derivatives of exp(t * a) at 0: d^n/dt^n exp(t a)|_{t = 0} = a^n.
    admit

  -- 4. Use the previous two steps to conclude.
  --    From h_deriv_under_integral and h_pointwise, we get
  --      (deriv^[n] (fun t => mgf X μ t) 0)
  --        = ∫ ω, (X ω)^n ∂μ.
  --    Rewriting yields the claim.
  have : (deriv^[n] (fun t => mgf X μ t) 0)
      = (∫ ω, (X ω)^n ∂μ) := by
    -- Rewrite the RHS of h_deriv_under_integral using h_pointwise
    -- and conclude by congruence.
    have := h_deriv_under_integral
    -- Replace the integrand by (X ω)^n
    --   using `h_pointwise` and standard integral congruence lemmas.
    admit

  -- Finally, rewrite the goal in the desired direction.
  simpa [this.symm]