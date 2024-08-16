#Requires AutoHotkey v2.0
#SingleInstance Force

BPMArray := [39, 43, 46, 53, 59, 66, 73, 81, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240]
BPMNumber := 9

#HotIf WinActive("ahk_exe Studio One.exe")

Backspace::
; BPMを+10%にします
; ショートカットキー（ここではBackspace）はお好きなキーに変更してください
{
    global BPMNumber
    Send "0"
    Sleep 5
    Click 1450, 950
    ; この1450, 950は画面上の座標を表しています
    ; click 1450, 950は画面下部のテンポの数字をクリックして文字入力状態にしています
    ; 各自のディスプレイにおける適切な座標を指定してください
    ; 座標を確認するには、Window Spy(Autohotkey Dashから起動できる）が便利です
    BPMNumber += 1
    Send BPMArray[BPMNumber]
    Send "{Enter}"
}

\::
; BPMを-10%にします
; ショートカットキー（ここでは\）はお好きなキーに変更してください
{
    global BPMNumber
    Send "0"
    Sleep 5
    Click 1450, 950
    ; この1450, 950は画面上の座標を表しています
    ; click 1450, 950は画面下部のテンポの数字をクリックして文字入力状態にしています
    ; 各自のディスプレイにおける適切な座標を指定してください
    ; 座標を確認するには、Window Spy(Autohotkey Dashから起動できる）が便利です
    BPMNumber -= 1
    Send BPMArray[BPMNumber]
    Send "{Enter}"
}
