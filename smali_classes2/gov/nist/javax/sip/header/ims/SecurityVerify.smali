.class public Lgov/nist/javax/sip/header/ims/SecurityVerify;
.super Lgov/nist/javax/sip/header/ims/SecurityAgree;
.source "SecurityVerify.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Security-Verify"

    .line 61
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;-><init>(Ljava/lang/String;)V

    return-void
.end method
