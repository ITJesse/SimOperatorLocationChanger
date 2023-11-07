# SimOperatorLocationChanger


[SimOperatorLocationChanger](https://github.com/westruk/SimOperatorLocationChanger/) with Magisk/KernelSU.

## How it works

This module will start a cron job to constantly update these properties using [resetprop](https://github.com/topjohnwu/Magisk/blob/master/docs/tools.md#resetprop):

- `[gsm.sim.operator.numeric]: [44010]`
- `[gsm.sim.operator.iso-country]: [jp]`
- `[gsm.sim.operator.alpha]: [DoCoMo]`
- `[gsm.operator.numeric]: [44010]`
- `[gsm.operator.iso-country]: [jp]`
- `[gsm.operator.alpha]: [DoCoMo]`

Also on first reboot after installation, data of the following packages will be cleared:

- `com.google.android.gms`
- `com.google.android.gsf`
- `com.android.vending`
