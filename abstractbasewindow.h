#ifndef ABSTRACTBASEWINDOW_H
#define ABSTRACTBASEWINDOW_H

#include <QtCore/QObject>

class AbstractBaseWindow : public QObject
{
		Q_OBJECT
	public:
		AbstractBaseWindow(QObject *parent = nullptr);

	public slots:

	private:

};

#endif // ABSTRACTBASEWINDOW_H
