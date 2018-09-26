#include <QSharedPointer>
#include <QJsonDocument>
#include <QJsonObject>

#include "eastakkaunt.h"

EastAkkaunt::EastAkkaunt(QObject *parent) :
QObject{parent},
m_balance{.0},
m_currentTariffId{0},
m_currentTariffName{""},
m_currentTariffPrice{0},
m_email{""},
m_fullName{""},
m_id{0},
m_isBlocked{false},
m_login{""},
m_mobilePhone{""},
m_nextTariffId{0},
m_nextTariffName{""},
m_nextTariffPrice{0},
m_arayTarifDescriptions{QJsonArray()}
{
}

void EastAkkaunt::pullAnswer(Sh_Ptr rep)
{
if(!rep.isNull() && !rep.get()->isEmpty())
{
    QJsonDocument *tempObjectJsonDocument = nullptr;
    try
    {
        tempObjectJsonDocument = new QJsonDocument(QJsonDocument::fromJson(*rep.get()));
    }
    catch(...)
    {
        qDebug() << "catch EastAkkaunt::pullAnswer AAAAAAAYYYAAAAAAAANNNNNNNNNNAAAAAAAAAAAAHHHHHHHHHHHHHH";
    }

            qDebug() << "reply ==> " << *tempObjectJsonDocument;
                auto accountProp = (tempObjectJsonDocument->object())["account_prop"].toObject();
                this->setBalance(accountProp["balance"].toString().toDouble());
                this->setCurrentTariffId(accountProp["current_tariff_id"].toString().toInt());
                this->setCurrentTariffName(accountProp["current_tariff_name"].toString());
                this->setCurrentTariffPrice(accountProp["current_tariff_price"].toString().toInt());
                this->setEmail(accountProp["email"].toString());
                this->setFullName(accountProp["full_name"].toString());
                this->setId(accountProp["id"].toString().toInt());
                this->setIsBlocked(accountProp["is_blocked"].toBool());
                this->setLogin(accountProp["login"].toString());
                this->setMobilePhone(accountProp["mobile_phone"].toString());
                this->setNextTariffId(accountProp["next_tariff_id"].toString().toInt());
                this->setNextTariffName(accountProp["next_tariff_name"].toString());
                this->setNextTariffPrice(accountProp["next_tariff_price"].toString().toInt());
                //*****
                this->setBonucePercent(accountProp["bonuce_percent"].toString().toInt());
                this->setIptvSet(accountProp["iptv_set"].toString());
                this->setSelfBlocked(accountProp["self_blocked"].toString());
                //*****

                this->setArayTarifDescriptions(tempObjectJsonDocument->object()["tariffs_table"].toArray());

                this->setChangeTariffTicketNumber((tempObjectJsonDocument->object())["ChangeTariffTicketNumber"].toInt());

//                qDebug() << "ChangeTariffTicketNumber ==> " << this->changeTariffTicketNumber();

//                        qDebug() << "Array Tariff ==> " << this->arayTarifDescriptions();

        //		qDebug() << "getBalance ==> " << getBalance();
        //		qDebug() << "currentTariffId ==> " << currentTariffId();
        //		qDebug() << "currentTariffName ==> " << currentTariffName();
        //		qDebug() << "currentTariffPrice ==> " << currentTariffPrice();
        //		qDebug() << "email ==> " << email();
        //		qDebug() << "fullName ==> " << fullName();
        //		qDebug() << "id ==> " << id();
        //		qDebug() << "isBlocked ==> " << isBlocked();
        //		qDebug() << "login ==> " << login();
        //		qDebug() << "mobilePhone ==> " << mobilePhone();
        //		qDebug() << "nextTariffId ==> " << nextTariffId();
        //		qDebug() << "nextTariffName ==> " << nextTariffName();
        //		qDebug() << "nextTariffPrice ==> " << nextTariffPrice();
        //		qDebug() << "bonucePercent ==> " << bonucePercent();
        //		qDebug() << "iptvSet ==> " << iptvSet();
        //		qDebug() << "selfBlocked ==> " << selfBlocked();

                delete tempObjectJsonDocument;
}
rep.clear();
}


double EastAkkaunt::getBalance() const
{
return m_balance;
}

qsizetype EastAkkaunt::currentTariffId() const
{
return m_currentTariffId;
}

QString EastAkkaunt::currentTariffName() const
{
return m_currentTariffName;
}

int EastAkkaunt::currentTariffPrice() const
{
return m_currentTariffPrice;
}

QString EastAkkaunt::email() const
{
return m_email;
}

QString EastAkkaunt::fullName() const
{
return m_fullName;
}

qsizetype EastAkkaunt::id() const
{
return m_id;
}

bool EastAkkaunt::isBlocked() const
{
return m_isBlocked;
}

QString EastAkkaunt::login() const
{
return m_login;
}

QString EastAkkaunt::mobilePhone() const
{
return m_mobilePhone;
}

qsizetype EastAkkaunt::nextTariffId() const
{
return m_nextTariffId;
}

QString EastAkkaunt::nextTariffName() const
{
return m_nextTariffName;
}

qsizetype EastAkkaunt::nextTariffPrice() const
{
return m_nextTariffPrice;
}

int EastAkkaunt::bonucePercent() const
{
return m_bonucePercent;
}

QString EastAkkaunt::iptvSet() const
{
return m_iptvSet;
}

QString EastAkkaunt::selfBlocked() const
{
return m_selfBlocked;
}

QJsonArray EastAkkaunt::arayTarifDescriptions() const
{
return m_arayTarifDescriptions;
}

QJsonArray EastAkkaunt::arra() const
{
return this->arayTarifDescriptions();
}

int EastAkkaunt::changeTariffTicketNumber() const
{
    return m_changeTariffTicketNumber;
}

void EastAkkaunt::setBalance(double balance)
{
qWarning("Floating point comparison needs context sanity check");
if (qFuzzyCompare(m_balance, balance))
    return;

m_balance = balance;
emit balanceChanged(m_balance);
}

void EastAkkaunt::setCurrentTariffId(qsizetype currentTariffId)
{
if (m_currentTariffId == currentTariffId)
    return;

m_currentTariffId = currentTariffId;
emit currentTariffIdChanged(m_currentTariffId);
}

void EastAkkaunt::setCurrentTariffName(QString currentTariffName)
{
if (m_currentTariffName == currentTariffName)
    return;

m_currentTariffName = currentTariffName;
emit currentTariffNameChanged(m_currentTariffName);
}

void EastAkkaunt::setCurrentTariffPrice(int currentTariffPrice)
{
if (m_currentTariffPrice == currentTariffPrice)
    return;

m_currentTariffPrice = currentTariffPrice;
emit currentTariffPriceChanged(m_currentTariffPrice);
}

void EastAkkaunt::setEmail(QString email)
{
if (m_email == email)
    return;

m_email = email;
emit emailChanged(m_email);
}

void EastAkkaunt::setFullName(QString fullName)
{
if (m_fullName == fullName)
    return;

m_fullName = fullName;
emit fullNameChanged(m_fullName);
}

void EastAkkaunt::setId(qsizetype id)
{
if (m_id == id)
    return;

m_id = id;
emit idChanged(m_id);
}

void EastAkkaunt::setIsBlocked(bool isBlocked)
{
if (m_isBlocked == isBlocked)
    return;

m_isBlocked = isBlocked;
emit isBlockedChanged(m_isBlocked);
}

void EastAkkaunt::setLogin(QString login)
{
if (m_login == login)
    return;

m_login = login;
emit loginChanged(m_login);
}

void EastAkkaunt::setMobilePhone(QString mobilePhone)
{
if (m_mobilePhone == mobilePhone)
    return;

m_mobilePhone = mobilePhone;
emit mobilePhoneChanged(m_mobilePhone);
}

void EastAkkaunt::setNextTariffId(qsizetype nextTariffId)
{
if (m_nextTariffId == nextTariffId)
    return;

m_nextTariffId = nextTariffId;
emit nextTariffIdChanged(m_nextTariffId);
}

void EastAkkaunt::setNextTariffName(QString nextTariffName)
{
if (m_nextTariffName == nextTariffName)
    return;

m_nextTariffName = nextTariffName;
emit nextTariffNameChanged(m_nextTariffName);
}

void EastAkkaunt::setNextTariffPrice(qsizetype nextTariffPrice)
{
if (m_nextTariffPrice == nextTariffPrice)
    return;

m_nextTariffPrice = nextTariffPrice;
emit nextTariffPriceChanged(m_nextTariffPrice);
}

void EastAkkaunt::setBonucePercent(qsizetype bonucePercent)
{
if (m_bonucePercent == bonucePercent)
    return;

m_bonucePercent = bonucePercent;
emit bonucePercentChanged(m_bonucePercent);
}

void EastAkkaunt::setIptvSet(QString iptvSet)
{
if (m_iptvSet == iptvSet)
    return;

m_iptvSet = iptvSet;
emit iptvSetChanged(m_iptvSet);
}

void EastAkkaunt::setSelfBlocked(QString selfBlocked)
{
if (m_selfBlocked == selfBlocked)
    return;

m_selfBlocked = selfBlocked;
emit selfBlockedChanged(m_selfBlocked);
}

void EastAkkaunt::setArayTarifDescriptions(QJsonArray arayTarifDescriptions)
{
    m_arayTarifDescriptions = arayTarifDescriptions;
//    qDebug() << "m_arayTarifDescriptions ==> " << this->arayTarifDescriptions();
    emit arayTarifDescriptionsChanged();
}


void EastAkkaunt::setChangeTariffTicketNumber(int changeTariffTicketNumber)
{

    if (m_changeTariffTicketNumber == changeTariffTicketNumber)
        return;

    m_changeTariffTicketNumber = changeTariffTicketNumber;
    emit changeTariffTicketNumberChanged();
}
