.class public Lgov/nist/javax/sip/header/ims/SecurityClientList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "SecurityClientList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/ims/SecurityClient;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2af0eab41e6fa299L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    const-class v0, Lgov/nist/javax/sip/header/ims/SecurityClient;

    const-string v1, "Security-Client"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 62
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityClientList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityClientList;-><init>()V

    .line 63
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object p0

    return-object p0
.end method
