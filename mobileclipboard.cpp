#include <QClipboard>
#include <QApplication>
#include "mobileclipboard.h"

MobileClipBoard::MobileClipBoard(QObject *parent) : QObject(parent)
{

}

void MobileClipBoard::setText(const QString &from)
{
    QClipboard *clipboard = QApplication::clipboard();
    QString originalText = clipboard->text();

    clipboard->setText(from);
}

QString MobileClipBoard::text()
{
    QClipboard *clipboard = QApplication::clipboard();
    return clipboard->text();
}
