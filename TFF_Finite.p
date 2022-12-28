tff(human_type,type,      human: $tType ).
tff(cat_type,type,        cat: $tType ).
tff(jon_decl,type,        jon: human ).
tff(garfield_decl,type,   garfield: cat ).
tff(arlene_decl,type,     arlene: cat ).
tff(loves_most_decl,type, loves_most: cat > cat ).
tff(owns_decl,type,       owns: ( human * cat ) > $o ).

% tff(only_jon,axiom,
%     ! [H: human] : H = jon).
% tff(only_garfield_and_arlene,axiom,
%     ! [C: cat] : (C = garfield | C = arlene) ).

tff(garfield_not_arlene,axiom,
    garfield != arlene ).

tff(jon_owns_only_garfield,axiom,
    ( owns(jon,garfield)
    & ~ owns(jon,arlene) ) ).

tff(all_cats_love_garfield,axiom,
    ! [C: cat] : ( loves_most(C) = garfield ) ).

tff(jon_owns_garfields_lovers,conjecture,
    ! [C: cat] : ( ( loves_most(C) = garfield ) => owns(jon,C) ) ).
