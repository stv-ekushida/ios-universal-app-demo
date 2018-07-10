# ios-universal-app-demo
iPhoneとiPadをビルドターゲットで出し分けるサンプル

## 画面の向きを固定にする方法
1. TARGETSのGeneralのRequires full screenをOnにする
2. AppDelegateにsupportedInterfaceOrientationsForを実装する

#### iPadのときは横向き / iPhoneの場合は縦向きに表示するサンプル
```swift:AppDelegate.swift
    func application(_ application: UIApplication,
                     supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return DeviceModel.isPad ?
            UIInterfaceOrientationMask.landscape : UIInterfaceOrientationMask.portrait
    }
````    

## ビルドターゲットの追加方法
### ターゲットの作成
1. 既存のTARGETを右クリック、Duplicateを選択してTARGETを複製する
2. TARGETを複製するとアプリの設定ファイルInfo.plistも複製されるが、こちらは削除する。

###  Build Settingsの設定
1. TARGETを任意の名前に変更する
2. Bundle Identifierを任意のIDに変更する

### Other Swift Flagsの設定
1. Build SettingsのOther Swift Flagsに -D 任意の名前を設定する

### Display Nameの設定
1. Build SettingsのAdd User-Defined SettingからDISPLAY_NAMEを追加する
2. DISPLAY_NAMEに任意の名前を設定する
3. Info.plistに Bundle display nameを追加する
4. Bundle display nameの値に$(DISPLAY_NAME)を設定する
