.class public Lgov/nist/javax/sip/header/Unsupported;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Unsupported.java"


# static fields
.field private static final serialVersionUID:J = -0x2268a6084c766aa7L


# instance fields
.field protected optionTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Unsupported"

    .line 57
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lgov/nist/javax/sip/header/Unsupported;->optionTag:Ljava/lang/String;

    return-object p0
.end method

.method public setOptionTag(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "JAIN-SIP Exception,  Unsupported, setOptionTag(), The option tag parameter is null"

    .line 89
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iput-object p1, p0, Lgov/nist/javax/sip/header/Unsupported;->optionTag:Ljava/lang/String;

    return-void
.end method
