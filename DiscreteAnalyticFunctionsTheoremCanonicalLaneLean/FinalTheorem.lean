import canonicalLaneMathlib.AdmissibleClass
import DiscreteAnalyticFunctionsLayer.lean

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsTheoremCanonicalLaneLean

-- The final constrained theorem closure for Poisson's equation theorem

def ConstrainedPoissonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

-- Proof that every admissible class satisfies Poisson closure

theorem constrained_poisson_endgame (A : AdmissibleClass) : ConstrainedPoissonClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse