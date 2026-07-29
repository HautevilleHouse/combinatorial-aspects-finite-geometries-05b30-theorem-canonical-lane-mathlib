import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure BlockDesign where
  pointSet : Type u
  blockSet : Type v
  incidence : pointSet → blockSet → Prop
  constantBlockSize : Prop
  pairwiseBalance : Prop

def BlockDesignClosed (D : BlockDesign) : Prop :=
  D.constantBlockSize ∧ D.pairwiseBalance

theorem block_design_closed_from_properties (D : BlockDesign) (h1 : D.constantBlockSize) (h2 : D.pairwiseBalance) :
  BlockDesignClosed D := by
  exact And.intro h1 h2

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse