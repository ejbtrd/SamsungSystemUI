.class public Lgov/nist/javax/sip/header/SIPIfMatch;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "SIPIfMatch.java"


# static fields
.field private static final serialVersionUID:J = 0x3534333335383632L


# instance fields
.field protected entityTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SIP-If-Match"

    .line 54
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPIfMatch;->entityTag:Ljava/lang/String;

    return-object p0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "JAIN-SIP Exception,SIP-If-Match, setETag(), the etag parameter is null"

    .line 84
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPIfMatch;->entityTag:Ljava/lang/String;

    return-void
.end method
