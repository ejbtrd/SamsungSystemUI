.class public Lgov/nist/javax/sip/header/Organization;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Organization.java"


# static fields
.field private static final serialVersionUID:J = -0x2682caa11d164bc8L


# instance fields
.field protected organization:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Organization"

    .line 70
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lgov/nist/javax/sip/header/Organization;->organization:Ljava/lang/String;

    return-object p0
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "JAIN-SIP Exception, Organization, setOrganization(), the organization parameter is null"

    .line 87
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lgov/nist/javax/sip/header/Organization;->organization:Ljava/lang/String;

    return-void
.end method
