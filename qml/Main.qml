import Felgo 3.0
import QtQuick 2.0

App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    NavigationStack {

        Page {
            title: qsTr("Main Page")

            AppToolTip {
                 id: copyTip
                 text: "Copied"
            }

            AppListView {
                id: listView
                anchors.fill: parent

                delegate: SimpleRow {
                    item: modelData
                    showDisclosure: false
                    onSelected: {
                        copyTip.target = listView.currentItem
                        clipboard.setText(detailText)
                        copyTip.open()
                    }
                }

                model: [
                    { text: "WIFI ID",
                        detailText: "MyWifi" },
                    { text: "WIFI PASSWORD",
                        detailText: "1234562"}
                ]
            }
        }
    }
}
