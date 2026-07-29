import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteAnalyticFunctionsTheoremCanonicalLaneLean.DiscreteCauchyRiemannLayer
import HautevilleHouse.DiscreteAnalyticFunctionsTheoremCanonicalLaneLean.DiscreteHarmonicLayer
import HautevilleHouse.DiscreteAnalyticFunctionsTheoremCanonicalLaneLean.LatticeConnectionLayer

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsTheoremCanonicalLaneLean

structure DiscreteFunctionDatum where
  discreteAnalyticChecked : Bool
  latticeChecked : Bool

def primitiveDiscreteFunctionDatum : DiscreteFunctionDatum := {
  discreteAnalyticChecked := true,
  latticeChecked := true
}

def ConstrainedDiscreteAnalyticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discrete_analytic_endgame (A : AdmissibleClass) :
    ConstrainedDiscreteAnalyticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse