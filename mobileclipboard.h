#ifndef MOBILECLIPBOARD_H
#define MOBILECLIPBOARD_H

#include <QObject>

class MobileClipBoard : public QObject
{
    Q_OBJECT
public:
    explicit MobileClipBoard(QObject *parent = nullptr);
    Q_INVOKABLE void setText(const QString &from);
    Q_INVOKABLE QString text();
};

#endif // MOBILECLIPBOARD_H
