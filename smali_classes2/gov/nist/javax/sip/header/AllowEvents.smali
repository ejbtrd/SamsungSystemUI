.class public final Lgov/nist/javax/sip/header/AllowEvents;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "AllowEvents.java"


# static fields
.field private static final serialVersionUID:J = 0x893718ec0c30d9aL


# instance fields
.field protected eventType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Allow-Events"

    .line 58
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lgov/nist/javax/sip/header/AllowEvents;->eventType:Ljava/lang/String;

    return-object p0
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "JAIN-SIP Exception,AllowEvents, setEventType(), the eventType parameter is null"

    .line 79
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lgov/nist/javax/sip/header/AllowEvents;->eventType:Ljava/lang/String;

    return-void
.end method
