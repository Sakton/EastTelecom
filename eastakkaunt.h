#ifndef EASTAKKAUNT_H
#define EASTAKKAUNT_H

#include <QtCore/QObject>
#include <QNetworkReply>
#include <QJsonArray>

using Sh_Ptr = QSharedPointer<QByteArray>;

class EastAkkaunt : public QObject
{
		Q_OBJECT
	public:
		explicit EastAkkaunt(QObject *parent = nullptr);

		double getBalance() const;
		qsizetype currentTariffId() const;
		QString currentTariffName() const;
		int currentTariffPrice() const;
		QString email() const;
		QString fullName() const;
		qsizetype id() const;
		bool isBlocked() const;
		QString login() const;
		QString mobilePhone() const;
		qsizetype nextTariffId() const;
		QString nextTariffName() const;
		qsizetype nextTariffPrice() const;
        //*******1
		int bonucePercent() const;
		QString iptvSet() const;
		QString selfBlocked() const;
        //*******2
        QJsonArray arayTarifDescriptions() const;

        //**test**
        Q_INVOKABLE QJsonArray arra() const;

        int changeTariffTicketNumber() const;

    signals:
		void balanceChanged(double balance);
		void currentTariffIdChanged(qsizetype currentTariffId);
		void currentTariffNameChanged(QString currentTariffName);
		void currentTariffPriceChanged(int currentTariffPrice);
		void emailChanged(QString email);
		void fullNameChanged(QString fullName);
		void idChanged(qsizetype id);
		void isBlockedChanged(bool isBlocked);
		void loginChanged(QString login);
		void mobilePhoneChanged(QString mobilePhone);
		void nextTariffIdChanged(qsizetype nextTariffId);
		void nextTariffNameChanged(QString nextTariffName);
		void nextTariffPriceChanged(qsizetype nextTariffPrice);
        //*******1
		void bonucePercentChanged(int bonucePercent);
		void iptvSetChanged(QString iptvSet);
		void selfBlockedChanged(QString selfBlocked);
        //*******2
        void arayTarifDescriptionsChanged();
        //*******3
        void changeTariffTicketNumberChanged();

    public slots:
		void pullAnswer(Sh_Ptr rep);
		void setBalance(double balance);
		void setCurrentTariffId(qsizetype currentTariffId);
		void setCurrentTariffName(QString currentTariffName);
		void setCurrentTariffPrice(int currentTariffPrice);
		void setEmail(QString email);
		void setFullName(QString fullName);
		void setId(qsizetype id);
		void setIsBlocked(bool isBlocked);
		void setLogin(QString login);
		void setMobilePhone(QString mobilePhone);
		void setNextTariffId(qsizetype nextTariffId);
		void setNextTariffName(QString nextTariffName);
		void setNextTariffPrice(qsizetype nextTariffPrice);
        //********1
		void setBonucePercent(qsizetype bonucePercent);
		void setIptvSet(QString iptvSet);
		void setSelfBlocked(QString selfBlocked);
        //********2
        void setArayTarifDescriptions(QJsonArray arayTarifDescriptions);
        //********3
        void setChangeTariffTicketNumber(int changeTariffTicketNumber);

    private:
		Q_PROPERTY(double balance READ getBalance WRITE setBalance NOTIFY balanceChanged)
		Q_PROPERTY(qsizetype currentTariffId READ currentTariffId WRITE setCurrentTariffId NOTIFY currentTariffIdChanged)
		Q_PROPERTY(QString currentTariffName READ currentTariffName WRITE setCurrentTariffName NOTIFY currentTariffNameChanged)
		Q_PROPERTY(int currentTariffPrice READ currentTariffPrice WRITE setCurrentTariffPrice NOTIFY currentTariffPriceChanged)
		Q_PROPERTY(QString email READ email WRITE setEmail NOTIFY emailChanged)
		Q_PROPERTY(QString fullName READ fullName WRITE setFullName NOTIFY fullNameChanged)
		Q_PROPERTY(qsizetype id READ id WRITE setId NOTIFY idChanged)
		Q_PROPERTY(bool isBlocked READ isBlocked WRITE setIsBlocked NOTIFY isBlockedChanged)
		Q_PROPERTY(QString login READ login WRITE setLogin NOTIFY loginChanged)
		Q_PROPERTY(QString mobilePhone READ mobilePhone WRITE setMobilePhone NOTIFY mobilePhoneChanged)
		Q_PROPERTY(qsizetype nextTariffId READ nextTariffId WRITE setNextTariffId NOTIFY nextTariffIdChanged)
		Q_PROPERTY(QString nextTariffName READ nextTariffName WRITE setNextTariffName NOTIFY nextTariffNameChanged)
		Q_PROPERTY(qsizetype nextTariffPrice READ nextTariffPrice WRITE setNextTariffPrice NOTIFY nextTariffPriceChanged)
        //********1
		Q_PROPERTY(int bonucePercent READ bonucePercent WRITE setBonucePercent NOTIFY bonucePercentChanged)
		Q_PROPERTY(QString iptvSet READ iptvSet WRITE setIptvSet NOTIFY iptvSetChanged) //type - ???
		Q_PROPERTY(QString selfBlocked READ selfBlocked WRITE setSelfBlocked NOTIFY selfBlockedChanged) //type - ???
        //******2
        Q_PROPERTY(QJsonArray arayTarifDescriptions READ arayTarifDescriptions WRITE setArayTarifDescriptions NOTIFY arayTarifDescriptionsChanged)
        //******3
        Q_PROPERTY(int changeTariffTicketNumber READ changeTariffTicketNumber WRITE setChangeTariffTicketNumber NOTIFY changeTariffTicketNumberChanged)


		double m_balance;
		qsizetype m_currentTariffId;
		QString m_currentTariffName;
		int m_currentTariffPrice;
		QString m_email;
		QString m_fullName;
		qsizetype m_id;
		bool m_isBlocked;
		QString m_login;
		QString m_mobilePhone;
		qsizetype m_nextTariffId;
		QString m_nextTariffName;
		qsizetype m_nextTariffPrice;
        //*****1
		int m_bonucePercent;
		QString m_iptvSet;
        QString m_selfBlocked;
        QJsonArray m_arayTarifDescriptions;
        int m_changeTariffTicketNumber;
};

#endif // EASTAKKAUNT_H
