.class public Lgov/nist/javax/sip/header/HeaderFactoryImpl;
.super Ljava/lang/Object;
.source "HeaderFactoryImpl.java"

# interfaces
.implements Ljavax/sip/header/HeaderFactory;


# instance fields
.field private stripAddressScopeZones:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    .line 1699
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    return-void
.end method


# virtual methods
.method public createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1166
    new-instance p0, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 1167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p0

    .line 1168
    instance-of v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v0, :cond_2

    .line 1169
    move-object v0, p0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 1173
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1175
    :try_start_0
    check-cast p0, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 1176
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getMyClass()Ljava/lang/Class;

    move-result-object p0

    .line 1177
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/sip/header/Header;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1182
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-object p1

    :catch_1
    move-exception p0

    .line 1179
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    return-object p1

    .line 1186
    :cond_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Ljavax/sip/header/Header;

    move-result-object p0

    return-object p0

    .line 1170
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only singleton allowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    return-object p0
.end method

.method public createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "header name is null"

    .line 1206
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1207
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1209
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ":"

    .line 1210
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1211
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1212
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1213
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p0

    return-object p0
.end method
