.class public Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;
.super Ljava/lang/Object;
.source "PermissionApplicationPrivateKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdminPkgName:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPort:I

.field private mStorageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAdminPkgName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPackageName:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mHost:Ljava/lang/String;

    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPort:I

    .line 44
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAlias:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mStorageName:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAdminPkgName:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPackageName:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mHost:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPort:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAlias:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mStorageName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionApplicationPrivateKey\nmAdminPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAdminPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmHost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmAlias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmStorageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mStorageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 108
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAdminPkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mHost:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget p2, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object p2, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->mStorageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
