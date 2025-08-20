import QtQuick 2.0

Rectangle {
    width: parent.width
    height: parent.height
    color: "#1a1a1a"
    
    // Simple background with logo
    Image {
        id: backgroundImage
        anchors.fill: parent
        source: "/usr/share/backgrounds/wallpaper.png"
        fillMode: Image.PreserveAspectCrop
        opacity: 0.3
    }
    
    Rectangle {
        anchors.fill: parent
        color: "#000000"
        opacity: 0.6
    }
    
    Column {
        anchors.centerIn: parent
        spacing: 30
        
        Image {
            source: "/usr/share/pixmaps/nanite-logo.png"
            width: 120
            height: 120
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }
        
        Text {
            text: "Welcome to Nanite Linux"
            font.pixelSize: 36
            font.bold: true
            color: "#ffffff"
            anchors.horizontalCenter: parent.horizontalCenter
        }
        
        Text {
            text: "AI/ML Edition"
            font.pixelSize: 24
            color: "#4a90e2"
            anchors.horizontalCenter: parent.horizontalCenter
        }
        
        Text {
            text: "Professional AI & Machine Learning Development Distribution"
            font.pixelSize: 16
            color: "#e0e0e0"
            anchors.horizontalCenter: parent.horizontalCenter
        }
        
        Text {
            text: "https://nanite.software"
            font.pixelSize: 14
            color: "#888888"
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
