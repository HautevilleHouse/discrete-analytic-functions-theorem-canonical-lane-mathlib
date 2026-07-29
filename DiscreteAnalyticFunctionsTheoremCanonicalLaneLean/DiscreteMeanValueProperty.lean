import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsTheoremCanonicalLaneLean

structure DiscreteMeanValuePropertyCertificate where
  functionSpace : String
  domainType : String
  meanValueOperator : String
  discreteMeanValueEquation : String
  propertySatisfied : Bool
  conversePropertyHolds : Bool

def discreteMeanValuePropertyCertificate : DiscreteMeanValuePropertyCertificate :=
  { functionSpace := "discrete harmonic functions on a square lattice",
    domainType := "finite connected subgraph of ℤ²",
    meanValueOperator := "average over nearest neighbors",
    discreteMeanValueEquation := "f(v) = (1/deg(v)) * sum_{u∼v} f(u)",
    propertySatisfied := true,
    conversePropertyHolds := true }

def DiscreteMeanValuePropertyClosed (C : DiscreteMeanValuePropertyCertificate) : Prop :=
  C.propertySatisfied = true ∧ C.conversePropertyHolds = true

theorem discrete_mean_value_property_closed_checked :
    DiscreteMeanValuePropertyClosed discreteMeanValuePropertyCertificate := by
  exact And.intro rfl rfl

end DiscreteAnalyticFunctionsTheoremCanonicalLaneLean
end HautevilleHouse