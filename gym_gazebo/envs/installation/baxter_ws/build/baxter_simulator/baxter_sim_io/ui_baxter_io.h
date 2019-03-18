/********************************************************************************
** Form generated from reading UI file 'baxter_io.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_BAXTER_IO_H
#define UI_BAXTER_IO_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDial>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_BaxterIO
{
public:
    QWidget *centralWidget;
    QDial *left_shoulder_dial;
    QDial *left_arm_dial;
    QDial *right_shoulder_dial;
    QDial *right_arm_dial;
    QPushButton *left_arm_ok;
    QPushButton *left_arm_show;
    QPushButton *left_shoulder_ok;
    QPushButton *right_shoulder_ok;
    QPushButton *right_arm_ok;
    QPushButton *left_shoulder_show;
    QPushButton *right_shoulder_show;
    QPushButton *right_arm_show;
    QPushButton *left_cuff_squeeze;
    QPushButton *left_cuff_ok;
    QPushButton *left_cuff_grasp;
    QPushButton *right_cuff_squeeze;
    QPushButton *right_cuff_ok;
    QPushButton *right_cuff_grasp;
    QPushButton *left_arm_cancel;
    QPushButton *left_shoulder_cancel;
    QPushButton *right_shoulder_cancel;
    QPushButton *right_arm_cancel;
    QLabel *logo;
    QLabel *label_9;
    QLabel *label_10;
    QLabel *label_11;
    QLabel *label_12;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_4;
    QLabel *label_5;
    QLabel *label_6;
    QLabel *label_7;
    QLabel *label_8;
    QLabel *label_13;
    QLabel *label_14;

    void setupUi(QMainWindow *BaxterIO)
    {
        if (BaxterIO->objectName().isEmpty())
            BaxterIO->setObjectName(QStringLiteral("BaxterIO"));
        BaxterIO->resize(564, 440);
        BaxterIO->setStyleSheet(QLatin1String("QWidget#centralWidget {\n"
"	background-color: rgb(0, 0, 0);\n"
"}"));
        centralWidget = new QWidget(BaxterIO);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        centralWidget->setStyleSheet(QStringLiteral(""));
        left_shoulder_dial = new QDial(centralWidget);
        left_shoulder_dial->setObjectName(QStringLiteral("left_shoulder_dial"));
        left_shoulder_dial->setGeometry(QRect(120, 160, 81, 81));
        left_shoulder_dial->setMaximum(255);
        left_arm_dial = new QDial(centralWidget);
        left_arm_dial->setObjectName(QStringLiteral("left_arm_dial"));
        left_arm_dial->setGeometry(QRect(10, 160, 101, 81));
        left_arm_dial->setMaximum(255);
        right_shoulder_dial = new QDial(centralWidget);
        right_shoulder_dial->setObjectName(QStringLiteral("right_shoulder_dial"));
        right_shoulder_dial->setGeometry(QRect(360, 160, 81, 81));
        right_shoulder_dial->setMaximum(255);
        right_arm_dial = new QDial(centralWidget);
        right_arm_dial->setObjectName(QStringLiteral("right_arm_dial"));
        right_arm_dial->setGeometry(QRect(460, 160, 81, 81));
        right_arm_dial->setMaximum(255);
        left_arm_ok = new QPushButton(centralWidget);
        left_arm_ok->setObjectName(QStringLiteral("left_arm_ok"));
        left_arm_ok->setGeometry(QRect(50, 190, 31, 31));
        left_arm_ok->setStyleSheet(QStringLiteral(""));
        left_arm_show = new QPushButton(centralWidget);
        left_arm_show->setObjectName(QStringLiteral("left_arm_show"));
        left_arm_show->setGeometry(QRect(30, 240, 61, 51));
        left_arm_show->setStyleSheet(QStringLiteral(""));
        left_shoulder_ok = new QPushButton(centralWidget);
        left_shoulder_ok->setObjectName(QStringLiteral("left_shoulder_ok"));
        left_shoulder_ok->setGeometry(QRect(150, 190, 31, 31));
        left_shoulder_ok->setStyleSheet(QStringLiteral(""));
        right_shoulder_ok = new QPushButton(centralWidget);
        right_shoulder_ok->setObjectName(QStringLiteral("right_shoulder_ok"));
        right_shoulder_ok->setGeometry(QRect(390, 190, 31, 31));
        right_shoulder_ok->setStyleSheet(QStringLiteral(""));
        right_arm_ok = new QPushButton(centralWidget);
        right_arm_ok->setObjectName(QStringLiteral("right_arm_ok"));
        right_arm_ok->setGeometry(QRect(490, 190, 31, 31));
        right_arm_ok->setStyleSheet(QStringLiteral(""));
        left_shoulder_show = new QPushButton(centralWidget);
        left_shoulder_show->setObjectName(QStringLiteral("left_shoulder_show"));
        left_shoulder_show->setGeometry(QRect(130, 240, 61, 51));
        right_shoulder_show = new QPushButton(centralWidget);
        right_shoulder_show->setObjectName(QStringLiteral("right_shoulder_show"));
        right_shoulder_show->setGeometry(QRect(370, 240, 61, 51));
        right_shoulder_show->setStyleSheet(QStringLiteral(""));
        right_arm_show = new QPushButton(centralWidget);
        right_arm_show->setObjectName(QStringLiteral("right_arm_show"));
        right_arm_show->setGeometry(QRect(470, 240, 61, 51));
        right_arm_show->setStyleSheet(QStringLiteral(""));
        left_cuff_squeeze = new QPushButton(centralWidget);
        left_cuff_squeeze->setObjectName(QStringLiteral("left_cuff_squeeze"));
        left_cuff_squeeze->setGeometry(QRect(70, 320, 31, 51));
        left_cuff_squeeze->setStyleSheet(QStringLiteral(""));
        left_cuff_ok = new QPushButton(centralWidget);
        left_cuff_ok->setObjectName(QStringLiteral("left_cuff_ok"));
        left_cuff_ok->setGeometry(QRect(80, 370, 21, 21));
        left_cuff_ok->setStyleSheet(QStringLiteral(""));
        left_cuff_grasp = new QPushButton(centralWidget);
        left_cuff_grasp->setObjectName(QStringLiteral("left_cuff_grasp"));
        left_cuff_grasp->setGeometry(QRect(50, 370, 31, 21));
        left_cuff_grasp->setStyleSheet(QStringLiteral(""));
        right_cuff_squeeze = new QPushButton(centralWidget);
        right_cuff_squeeze->setObjectName(QStringLiteral("right_cuff_squeeze"));
        right_cuff_squeeze->setGeometry(QRect(410, 320, 31, 51));
        right_cuff_squeeze->setStyleSheet(QStringLiteral(""));
        right_cuff_ok = new QPushButton(centralWidget);
        right_cuff_ok->setObjectName(QStringLiteral("right_cuff_ok"));
        right_cuff_ok->setGeometry(QRect(420, 370, 21, 21));
        right_cuff_ok->setStyleSheet(QStringLiteral(""));
        right_cuff_grasp = new QPushButton(centralWidget);
        right_cuff_grasp->setObjectName(QStringLiteral("right_cuff_grasp"));
        right_cuff_grasp->setGeometry(QRect(390, 370, 31, 21));
        right_cuff_grasp->setStyleSheet(QStringLiteral(""));
        left_arm_cancel = new QPushButton(centralWidget);
        left_arm_cancel->setObjectName(QStringLiteral("left_arm_cancel"));
        left_arm_cancel->setGeometry(QRect(30, 120, 61, 51));
        left_arm_cancel->setStyleSheet(QStringLiteral(""));
        left_shoulder_cancel = new QPushButton(centralWidget);
        left_shoulder_cancel->setObjectName(QStringLiteral("left_shoulder_cancel"));
        left_shoulder_cancel->setGeometry(QRect(130, 120, 61, 51));
        left_shoulder_cancel->setStyleSheet(QStringLiteral(""));
        right_shoulder_cancel = new QPushButton(centralWidget);
        right_shoulder_cancel->setObjectName(QStringLiteral("right_shoulder_cancel"));
        right_shoulder_cancel->setGeometry(QRect(370, 120, 61, 51));
        right_shoulder_cancel->setStyleSheet(QStringLiteral(""));
        right_arm_cancel = new QPushButton(centralWidget);
        right_arm_cancel->setObjectName(QStringLiteral("right_arm_cancel"));
        right_arm_cancel->setGeometry(QRect(470, 120, 61, 51));
        right_arm_cancel->setStyleSheet(QStringLiteral(""));
        logo = new QLabel(centralWidget);
        logo->setObjectName(QStringLiteral("logo"));
        logo->setGeometry(QRect(220, 150, 121, 121));
        logo->setStyleSheet(QLatin1String("background-image: url(:/new/prefix/logo.png);\n"
"background-color: transparent;\n"
"background-repeat: none;\n"
"border: none;"));
        label_9 = new QLabel(centralWidget);
        label_9->setObjectName(QStringLiteral("label_9"));
        label_9->setGeometry(QRect(10, 100, 101, 211));
        label_9->setStyleSheet(QLatin1String("background-image: url(:/new/prefix/nav.png);\n"
"background-color: transparent;\n"
"background-repeat: none;\n"
"border: none;"));
        label_10 = new QLabel(centralWidget);
        label_10->setObjectName(QStringLiteral("label_10"));
        label_10->setGeometry(QRect(110, 100, 101, 211));
        label_10->setStyleSheet(QLatin1String("background-image: url(:/new/prefix/nav.png);\n"
"background-color: transparent;\n"
"background-repeat: none;\n"
"border: none;"));
        label_11 = new QLabel(centralWidget);
        label_11->setObjectName(QStringLiteral("label_11"));
        label_11->setGeometry(QRect(350, 100, 101, 211));
        label_11->setStyleSheet(QLatin1String("background-image: url(:/new/prefix/nav.png);\n"
"background-color: transparent;\n"
"background-repeat: none;\n"
"border: none;"));
        label_12 = new QLabel(centralWidget);
        label_12->setObjectName(QStringLiteral("label_12"));
        label_12->setGeometry(QRect(450, 100, 101, 211));
        label_12->setStyleSheet(QLatin1String("background-image: url(:/new/prefix/nav.png);\n"
"background-color: transparent;\n"
"background-repeat: none;\n"
"border: none;"));
        label = new QLabel(centralWidget);
        label->setObjectName(QStringLiteral("label"));
        label->setGeometry(QRect(30, 320, 151, 111));
        label->setStyleSheet(QLatin1String("background-image: url(:/new/prefix/robot_arm.png);\n"
"background-color: transparent;\n"
"background-repeat: none;\n"
"border: none;"));
        label_2 = new QLabel(centralWidget);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setGeometry(QRect(370, 320, 151, 111));
        label_2->setStyleSheet(QLatin1String("background-image: url(:/new/prefix/robot_arm.png);\n"
"background-color: transparent;\n"
"background-repeat: none;\n"
"border: none;"));
        label_3 = new QLabel(centralWidget);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setGeometry(QRect(80, 10, 51, 31));
        label_3->setContextMenuPolicy(Qt::DefaultContextMenu);
        label_3->setStyleSheet(QLatin1String("background-color: transparent;\n"
"background-image: url(:/new/prefix/left.png);\n"
"background-repeat: none;\n"
"border: none;"));
        label_4 = new QLabel(centralWidget);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setGeometry(QRect(410, 10, 71, 31));
        label_4->setContextMenuPolicy(Qt::DefaultContextMenu);
        label_4->setStyleSheet(QLatin1String("background-color: transparent;\n"
"background-image: url(:/new/prefix/right.png);\n"
"background-repeat: none;\n"
"border: none;"));
        label_5 = new QLabel(centralWidget);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setGeometry(QRect(10, 50, 51, 31));
        label_5->setContextMenuPolicy(Qt::DefaultContextMenu);
        label_5->setStyleSheet(QLatin1String("background-color: transparent;\n"
"background-image: url(:/new/prefix/arm.png);\n"
"background-repeat: none;\n"
"border: none;"));
        label_6 = new QLabel(centralWidget);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setGeometry(QRect(470, 50, 51, 31));
        label_6->setContextMenuPolicy(Qt::DefaultContextMenu);
        label_6->setStyleSheet(QLatin1String("background-color: transparent;\n"
"background-image: url(:/new/prefix/arm.png);\n"
"background-repeat: none;\n"
"border: none;"));
        label_7 = new QLabel(centralWidget);
        label_7->setObjectName(QStringLiteral("label_7"));
        label_7->setGeometry(QRect(130, 50, 71, 31));
        label_7->setContextMenuPolicy(Qt::DefaultContextMenu);
        label_7->setStyleSheet(QLatin1String("background-color: transparent;\n"
"background-image: url(:/new/prefix/torso.png);\n"
"background-repeat: none;\n"
"border: none;"));
        label_8 = new QLabel(centralWidget);
        label_8->setObjectName(QStringLiteral("label_8"));
        label_8->setGeometry(QRect(360, 50, 71, 31));
        label_8->setContextMenuPolicy(Qt::DefaultContextMenu);
        label_8->setStyleSheet(QLatin1String("background-color: transparent;\n"
"background-image: url(:/new/prefix/torso.png);\n"
"background-repeat: none;\n"
"border: none;"));
        label_13 = new QLabel(centralWidget);
        label_13->setObjectName(QStringLiteral("label_13"));
        label_13->setGeometry(QRect(70, 400, 71, 31));
        label_13->setContextMenuPolicy(Qt::DefaultContextMenu);
        label_13->setStyleSheet(QLatin1String("background-color: transparent;\n"
"background-image: url(:/new/prefix/cuff.png);\n"
"background-repeat: none;\n"
"border: none;"));
        label_14 = new QLabel(centralWidget);
        label_14->setObjectName(QStringLiteral("label_14"));
        label_14->setGeometry(QRect(410, 400, 71, 31));
        label_14->setContextMenuPolicy(Qt::DefaultContextMenu);
        label_14->setStyleSheet(QLatin1String("background-color: transparent;\n"
"background-image: url(:/new/prefix/cuff.png);\n"
"background-repeat: none;\n"
"border: none;"));
        BaxterIO->setCentralWidget(centralWidget);
        label->raise();
        label_2->raise();
        label_14->raise();
        label_13->raise();
        label_12->raise();
        label_11->raise();
        label_10->raise();
        label_9->raise();
        left_arm_cancel->raise();
        left_arm_dial->raise();
        left_arm_ok->raise();
        left_arm_show->raise();
        left_cuff_squeeze->raise();
        left_shoulder_cancel->raise();
        left_shoulder_dial->raise();
        left_shoulder_ok->raise();
        left_shoulder_show->raise();
        logo->raise();
        right_arm_cancel->raise();
        right_arm_dial->raise();
        right_arm_ok->raise();
        right_arm_show->raise();
        right_cuff_grasp->raise();
        right_shoulder_cancel->raise();
        right_shoulder_dial->raise();
        right_shoulder_ok->raise();
        right_shoulder_show->raise();
        label_3->raise();
        label_4->raise();
        label_5->raise();
        label_6->raise();
        label_7->raise();
        label_8->raise();
        right_cuff_squeeze->raise();
        right_cuff_ok->raise();
        left_cuff_grasp->raise();
        left_cuff_ok->raise();

        retranslateUi(BaxterIO);

        left_cuff_grasp->setDefault(false);


        QMetaObject::connectSlotsByName(BaxterIO);
    } // setupUi

    void retranslateUi(QMainWindow *BaxterIO)
    {
        BaxterIO->setWindowTitle(QApplication::translate("BaxterIO", "BaxterIO", Q_NULLPTR));
#ifndef QT_NO_WHATSTHIS
        BaxterIO->setWhatsThis(QApplication::translate("BaxterIO", "<html><head/><body><p>jghjhkhk</p></body></html>", Q_NULLPTR));
#endif // QT_NO_WHATSTHIS
        left_arm_ok->setText(QString());
        left_arm_show->setText(QString());
        left_shoulder_ok->setText(QString());
        right_shoulder_ok->setText(QString());
        right_arm_ok->setText(QString());
        left_shoulder_show->setText(QString());
        right_shoulder_show->setText(QString());
        right_arm_show->setText(QString());
        left_cuff_squeeze->setText(QString());
        left_cuff_ok->setText(QString());
        left_cuff_grasp->setText(QString());
        right_cuff_squeeze->setText(QString());
        right_cuff_ok->setText(QString());
        right_cuff_grasp->setText(QString());
        left_arm_cancel->setText(QString());
        left_shoulder_cancel->setText(QString());
        right_shoulder_cancel->setText(QString());
        right_arm_cancel->setText(QString());
        logo->setText(QString());
        label_9->setText(QString());
        label_10->setText(QString());
        label_11->setText(QString());
        label_12->setText(QString());
        label->setText(QString());
        label_2->setText(QString());
        label_3->setText(QString());
        label_4->setText(QString());
        label_5->setText(QString());
        label_6->setText(QString());
        label_7->setText(QString());
        label_8->setText(QString());
        label_13->setText(QString());
        label_14->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class BaxterIO: public Ui_BaxterIO {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_BAXTER_IO_H
