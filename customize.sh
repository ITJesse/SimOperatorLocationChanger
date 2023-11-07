ui_print '

Following properties will be changed:
 * gsm.sim.operator.alpha: DoCoMo
 * gsm.sim.operator.numeric: 44010
 * gsm.sim.operator.iso-country: jp
 * gsm.operator.numeric: 44010
 * gsm.operator.iso-country: jp
 * gsm.operator.alpha: DoCoMo

These packages will be cleared on next reboot:
 * com.google.android.gms
 * com.google.android.gsf
'

# clearing Google Play services crashes Magisk Manager
touch $MODPATH/pm-clear
