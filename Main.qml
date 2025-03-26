import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.LocalStorage 2.12
//import "qrc:/Database.js" as LocalStorage


ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: "Rock-Paper-Scissors"

    //property int winCount: LocalStorage.dbGet("playerWin")
    //property int losCount: LocalStorage.dbGet("playerLos")

    property int winCount: 0
    property int losCount: 0

    SwipeView
    {
        id: swipeView
        anchors.fill: parent
        currentIndex: 0
        interactive: false

        Home_Page{
            id: home_page
            width: 360
            height: 640
        }
        Game_Page{
            id: game_page
            width: 360
            height: 640
        }
        End_Page{
            id: end_page
            width: 360
            height: 640
        }
    }

    Component.onCompleted:
    {
        //LocalStorage.dbInit()
    }
}
