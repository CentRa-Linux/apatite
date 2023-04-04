import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import Qt.labs.settings 1.1
import org.kde.kirigami 2.15 as Kirigami

import Apatite 1.0

ApplicationWindow {
    id: window

    width: 800
    height: 420
    visible: true

    SystemPalette {
        id: activeSystemPalette
        colorGroup: SystemPalette.Active
    }

    SystemPalette {
        id: inactiveSystemPalette
        colorGroup: SystemPalette.Inactive
    }

    SystemPalette {
        id: disabledSystemPalette
        colorGroup: SystemPalette.Disabled
    }

    color: Kirigami.Theme.backgroundColor

    Grid {
        spacing: 5
        columns: 3
        anchors.fill: parent
        Button {
            text: "Linux最高！"
            display: AbstractButton.TextBesideIcon
            icon.name: "supertuxkart"
            width: 200
            height: 40
            highlighted: true
        }
        Button {
            text: "NetBSD最高！"
            display: AbstractButton.TextBesideIcon
            icon.name: "firefox"
            width: 200
            height: 40
            flat: true
        }
        Button {
            text: "Windows最高！"
            width: 200
            height: 40
            enabled: false
        }
        Button {
            text: "Minix最高！"
            display: AbstractButton.TextUnderIcon
            icon.name: "folder-open"
            icon.width: 64
            icon.height: 64
            width: 160
            height: 50
            highlighted: true
        }
        Button {
            text: "FreeBSD最高！"
            width: 200
            height: 40
            highlighted: false
        }
        Button {
            text: "macOS最高！"
            width: 200
            height: 40
            enabled: false
        }
        CheckBox {
            text: "オープンソースは好きですか？"
            tristate: true
        }
        TextField {
            width: 200
            placeholderText: "検索..."
            source: "search"
        }
        TextArea {
            width: 200
            height: 100
            placeholderText: "なぜLinuxを使わないのか、理由を400字以上で述べよ。"
        }
        Switch {
            text: "Linux大好きボタン"
            enabled: true
        }
        SpinBox {}
        Slider {}
        RangeSlider {}
        Column {
            RadioButton {
                text: "are"
            }
            RadioButton {
                text: "are"
            }
        }
    }
}
