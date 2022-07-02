.class public Lcom/samsung/android/knox/keystore/CertificateInfo;
.super Ljava/lang/Object;
.source "CertificateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/CertificateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlias:Ljava/lang/String;

.field mCertificate:Ljava/security/cert/Certificate;

.field private mEnabled:Z

.field private mHasPrivateKey:Z

.field mKey:Ljava/security/Key;

.field private mKeystore:I

.field private mSystemPreloaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/samsung/android/knox/keystore/CertificateInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/CertificateInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/CertificateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    .line 59
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    .line 59
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    .line 110
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private compareKeys(Ljava/security/Key;Ljava/security/Key;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 334
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 315
    instance-of v1, p1, Lcom/samsung/android/knox/keystore/CertificateInfo;

    if-eqz v1, :cond_1

    .line 316
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 318
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {v2, v3}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    iget-object v1, v1, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    .line 319
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->compareKeys(Ljava/security/Key;Ljava/security/Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 323
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 132
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 134
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKey:Ljava/security/Key;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 137
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 138
    iget p2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mKeystore:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 139
    iget-boolean p2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mSystemPreloaded:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 140
    iget-boolean p2, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mEnabled:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 141
    iget-boolean p0, p0, Lcom/samsung/android/knox/keystore/CertificateInfo;->mHasPrivateKey:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method
