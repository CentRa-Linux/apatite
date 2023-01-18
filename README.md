# QML Apatite

## How to use
> **Warning**<br>
> This component has only been tested on **Qt version 5.15.2** and *Windows OS* at *3840x2160 resolution* with a *scaling factor of 250 percent*; ***USAGE OF THIS COMPONENT CARRIES NO WARRANTY***.
> <br>&nbsp;

### Usage

Clone the repository first.

```bash
git clone https://github.com/CentRa-Linux/apatite.git
```

Then include `Apatite.pri` in your project. <sub>[see example-1](example/example-1/example-1.pro#L11)</sub>
```make
include('path/to/Apatite.pri')
```

Add `qrc:/` to the engine import path. <sub>[see example-1](example/example-1/main.cpp#L17)</sub>
```cpp
engine.addImportPath("qrc:/");
```

And finally import the `Apatite` module. <sub>[see example-1](example/example-1/main.qml#L6)</sub>
```qml
import Apatite 1.0
```

If you are confused, please refer to [example-1](example/example-1/) for a clearer understanding of what you should do.

## Components

<details open>
<summary>Pending</summary>

- [ ] Button
- [ ] Radio Button
- [ ] CheckBox
- [ ] Slider
- [ ] TextArea
- [ ] TextField
- [ ] ProgressBar
- [ ] RadioButton
- [ ] Switch
- [ ] RangeSlider
- [ ] SpinBox
- [ ] Tumbler
- [ ] Dial
- [ ] BusyIndicator <sub>*(updated)*</sub>
- [ ] SplitView
- [ ] StackView
- [ ] ComboBox
