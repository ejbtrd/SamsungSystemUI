.class public final Lgov/nist/javax/sip/header/ReasonList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "ReasonList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x67873560c2c2475eL


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    const-class v0, Lgov/nist/javax/sip/header/Reason;

    const-string v1, "Reason"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 48
    new-instance v0, Lgov/nist/javax/sip/header/ReasonList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReasonList;-><init>()V

    .line 49
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    return-object v0
.end method