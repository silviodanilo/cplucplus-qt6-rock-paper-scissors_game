import QtQuick 2.15
import QtQuick.Controls 2.12

ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: "Rock-Paper-Scissors"

    SwipeView
    {
        id: swipeView
        anchors.fill: parent
        currentIndex: 0
        interactive: false

        Item
        {
            id: home_Page
        }
        Item
        {
            id: game_Page
        }
        Item
        {
            id: end_Page
        }
    }
}
