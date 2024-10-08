; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.4.0 on Sat Jan 27 2024 18:01:05 GMT+0100 (Mitteleuropäische Normalzeit)
M913 X70 Y70 Z50		; set all motor corrents to 50% only
G91                     ; relative positioning
G1 H2 Z25 F8000          ; lift Z relative to current position
G0 F6000
G1 H1 X-380 Y-380 F8000 ; move quickly to X or Y endstop and stop there (first pass)
G1 H1 X-380             ; home X axis
G1 H1 Y-380              ; home Y axis
G1 X5 Y5 F8000          ; go back a few mm
G1 H1 X-380 F360        ; move slowly to X axis endstop once more (second pass)
G1 H1 Y-380             ; then move slowly to Y axis endstop
G90                     ; absolute positioning
G1 X175 Y170 F8000   	; go to middle bed probe point and home Z
G92 Z355                ; set Z position to axis minimum (you may want to adjust this)
G30                     ; home Z by probing the bed
M913 X100 Y100 Z100      ; set all motor corrents to 100% only
; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z5 F80              ; lift Z relative to current position
;G90                    ; absolute positioning


