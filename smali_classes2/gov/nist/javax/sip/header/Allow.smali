.class public final Lgov/nist/javax/sip/header/Allow;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Allow.java"

# interfaces
.implements Ljavax/sip/header/AllowHeader;


# static fields
.field private static final serialVersionUID:J = -0x2b177555b26229aaL


# instance fields
.field protected method:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Allow"

    .line 54
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lgov/nist/javax/sip/header/Allow;->method:Ljava/lang/String;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "JAIN-SIP Exception, Allow, setMethod(), the method parameter is null."

    .line 78
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Lgov/nist/javax/sip/header/Allow;->method:Ljava/lang/String;

    return-void
.end method
