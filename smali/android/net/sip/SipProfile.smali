.class public Landroid/net/sip/SipProfile;
.super Ljava/lang/Object;
.source "SipProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAddress:Ljavax/sip/address/Address;

.field private mAuthUserName:Ljava/lang/String;

.field private mAutoRegistration:Z

.field private transient mCallingUid:I

.field private mDomain:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mProfileName:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mProxyAddress:Ljava/lang/String;

.field private mSendKeepAlive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Landroid/net/sip/SipProfile$1;

    invoke-direct {v0}, Landroid/net/sip/SipProfile$1;-><init>()V

    sput-object v0, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UDP"

    .line 60
    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    const/16 v0, 0x13c4

    .line 63
    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    .line 66
    iput v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UDP"

    .line 60
    iput-object v0, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    const/16 v0, 0x13c4

    .line 63
    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    .line 66
    iput v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljavax/sip/address/Address;

    iput-object v2, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/sip/SipProfile$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/net/sip/SipProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 504
    iget v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    if-nez v0, :cond_0

    const/16 v0, 0x13c4

    iput v0, p0, Landroid/net/sip/SipProfile;->mPort:I

    :cond_0
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 330
    iget-object p2, p0, Landroid/net/sip/SipProfile;->mAddress:Ljavax/sip/address/Address;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 331
    iget-object p2, p0, Landroid/net/sip/SipProfile;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object p2, p0, Landroid/net/sip/SipProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object p2, p0, Landroid/net/sip/SipProfile;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object p2, p0, Landroid/net/sip/SipProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object p2, p0, Landroid/net/sip/SipProfile;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-boolean p2, p0, Landroid/net/sip/SipProfile;->mSendKeepAlive:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-boolean p2, p0, Landroid/net/sip/SipProfile;->mAutoRegistration:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget p2, p0, Landroid/net/sip/SipProfile;->mCallingUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget p2, p0, Landroid/net/sip/SipProfile;->mPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object p0, p0, Landroid/net/sip/SipProfile;->mAuthUserName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
