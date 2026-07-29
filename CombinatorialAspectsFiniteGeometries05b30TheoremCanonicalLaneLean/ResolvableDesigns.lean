import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure ResolvableDesignPackage where
  design : DesignTheoryPackage
  resolution : Type u
  parallelClasses : Prop
  eachPointInOneBlockPerClass : Prop

structure ResolvableDesignEvidence (R : ResolvableDesignPackage) where
  parallelClassesClosed : R.parallelClasses
  eachPointInOneBlockPerClassClosed : R.eachPointInOneBlockPerClass

def ResolvableDesignClosed (R : ResolvableDesignPackage) : Prop :=
  R.parallelClasses ∧ R.eachPointInOneBlockPerClass

theorem resolvable_design_closed_from_evidence (R : ResolvableDesignPackage) (E : ResolvableDesignEvidence R) :
    ResolvableDesignClosed R := by
  exact And.intro E.parallelClassesClosed E.eachPointInOneBlockPerClassClosed

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse