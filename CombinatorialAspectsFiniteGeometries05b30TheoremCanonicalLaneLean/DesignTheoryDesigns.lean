import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure DesignTheoryPackage where
  pointSet : Type u
  blockSet : Type v
  incidence : pointSet → blockSet → Prop
  regularity : Prop
  balance : Prop

structure DesignTheoryEvidence (D : DesignTheoryPackage) where
  regularityClosed : D.regularity
  balanceClosed : D.balance

def DesignTheoryClosed (D : DesignTheoryPackage) : Prop :=
  D.regularity ∧ D.balance

theorem design_theory_closed_from_evidence (D : DesignTheoryPackage) (E : DesignTheoryEvidence D) :
    DesignTheoryClosed D := by
  exact And.intro E.regularityClosed E.balanceClosed

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse