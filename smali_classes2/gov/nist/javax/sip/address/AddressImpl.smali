.class public final Lgov/nist/javax/sip/address/AddressImpl;
.super Lgov/nist/javax/sip/address/NetObject;
.source "AddressImpl.java"

# interfaces
.implements Ljavax/sip/address/Address;


# static fields
.field private static final serialVersionUID:J = 0x5f6385b6042972bL


# instance fields
.field protected address:Lgov/nist/javax/sip/address/GenericURI;

.field protected addressType:I

.field protected displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    const/4 v0, 0x1

    .line 190
    iput v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 340
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/AddressImpl;

    .line 341
    iget-object p0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz p0, :cond_0

    .line 342
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p0, v0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    :cond_0
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 168
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 p0, 0x2a

    .line 169
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "\""

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    if-eqz v0, :cond_5

    .line 179
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "<"

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 182
    iget v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    if-eq v0, v1, :cond_4

    iget-object p0, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-eqz p0, :cond_5

    :cond_4
    const-string p0, ">"

    .line 183
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 263
    :cond_0
    instance-of v0, p1, Ljavax/sip/address/Address;

    if-eqz v0, :cond_1

    .line 264
    check-cast p1, Ljavax/sip/address/Address;

    .line 267
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/AddressImpl;->getURI()Ljavax/sip/address/URI;

    move-result-object p0

    invoke-interface {p1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getAddressType()I
    .locals 0

    .line 198
    iget p0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    return p0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 1

    .line 104
    iget-object p0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    instance-of v0, p0, Lgov/nist/javax/sip/address/SipUri;

    if-eqz v0, :cond_0

    .line 106
    check-cast p0, Lgov/nist/javax/sip/address/SipUri;

    .line 107
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "address is not a SipUri"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getURI()Ljavax/sip/address/URI;
    .locals 0

    .line 301
    iget-object p0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 248
    iget-object p0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->hashCode()I

    move-result p0

    return p0
.end method

.method public setAddressType(I)V
    .locals 0

    .line 209
    iput p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 230
    iput p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    return-void
.end method

.method public setURI(Ljavax/sip/address/URI;)V
    .locals 0

    .line 319
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    iput-object p1, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    return-void
.end method

.method public setWildCardFlag()V
    .locals 1

    const/4 v0, 0x3

    .line 334
    iput v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->addressType:I

    .line 335
    new-instance v0, Lgov/nist/javax/sip/address/SipUri;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/AddressImpl;->address:Lgov/nist/javax/sip/address/GenericURI;

    .line 336
    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    const-string p0, "*"

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    return-void
.end method
