PROPERTY='
gsm.sim.operator.numeric=44010
gsm.sim.operator.iso-country=jp
gsm.sim.operator.alpha=DoCoMo
gsm.operator.numeric=44010
gsm.operator.iso-country=jp
gsm.operator.alpha=DoCoMo
'

for PROP in $PROPERTY; do
  NAME=${PROP%=*} VALUE=${PROP#*=}
  REPORT=$(getprop $NAME)
  TARGET=$(echo $REPORT | sed -r "s/[^,]{1,}/$VALUE/g") # dual-sim
  [ "$TARGET" = "$REPORT" ] || resetprop -n $NAME $TARGET
done
