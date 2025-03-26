import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.LocalStorage 2.12
import "file:///D:/Users/silvio.danilo.INTELIGENCIA/Documents/QtProjects/Rock-Paper-Scissors_Game/Database.js" as LocalDatabase


ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: "Rock-Paper-Scissors"

    property int winCount: LocalDatabase.dbGet("playerWin")
    property int losCount: LocalDatabase.dbGet("playerLos")

    //property int winCount: 0
    //property int losCount: 0

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
        LocalDatabase.dbInit()
        //LocalDatabase.dbSet("playerLos", 0)
        //LocalDatabase.dbSet("playerWin", 0)
    }
}
