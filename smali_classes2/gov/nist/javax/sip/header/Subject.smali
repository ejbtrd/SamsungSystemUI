.class public Lgov/nist/javax/sip/header/Subject;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Subject.java"


# static fields
.field private static final serialVersionUID:J = -0x59ead0607d05fec0L


# instance fields
.field protected subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Subject"

    .line 61
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "JAIN-SIP Exception,  Subject, setSubject(), the subject parameter is null"

    .line 86
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    return-void
.end method
