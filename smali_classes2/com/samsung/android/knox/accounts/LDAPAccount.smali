.class public Lcom/samsung/android/knox/accounts/LDAPAccount;
.super Ljava/lang/Object;
.source "LDAPAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/accounts/LDAPAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseDN:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public id:J

.field public isAnonymous:Z

.field public isSSL:Z

.field public password:Ljava/lang/String;

.field public port:I

.field public trustAll:I

.field public userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/samsung/android/knox/accounts/LDAPAccount$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/LDAPAccount$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/LDAPAccount;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/accounts/LDAPAccount$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/accounts/LDAPAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget p2, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget p0, p0, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
