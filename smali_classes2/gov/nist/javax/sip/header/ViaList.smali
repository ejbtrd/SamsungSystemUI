.class public final Lgov/nist/javax/sip/header/ViaList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "ViaList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/Via;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x361e71bad25641f9L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    const-class v0, Lgov/nist/javax/sip/header/Via;

    const-string v1, "Via"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 50
    new-instance v0, Lgov/nist/javax/sip/header/ViaList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ViaList;-><init>()V

    .line 51
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object p0

    return-object p0
.end method
