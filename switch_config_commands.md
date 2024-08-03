1. connect using console (baud 9600 8n1)
2. power on while holding the mode switch until `switch: ` is displayed
3. run `flash_init`
4. run `del flash:config.text`
5. run `del flash:vlan.dat`
6. run `boot`
7. run `enable` for privileged mode (displays `Switch#`)
8. run `configure terminal` and copy and paste the specific switch commands
9. run `copy running-config startup-config` to save the config to startup
10. run `show startup-config` to verify