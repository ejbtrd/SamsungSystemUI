.class public final Lgov/nist/javax/sip/header/ContentEncodingList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "ContentEncodingList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/ContentEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x663681100ea67232L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    const-class v0, Lgov/nist/javax/sip/header/ContentEncoding;

    const-string v1, "Content-Encoding"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 43
    new-instance v0, Lgov/nist/javax/sip/header/ContentEncodingList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentEncodingList;-><init>()V

    .line 44
    iget-object p0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    return-object v0
.end method
