.class Lcom/samsung/android/knox/accounts/HostAuth$1;
.super Ljava/lang/Object;
.source "HostAuth.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/accounts/HostAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/accounts/HostAuth;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/accounts/HostAuth;
    .locals 1

    .line 236
    new-instance p0, Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>(Landroid/os/Parcel;Lcom/samsung/android/knox/accounts/HostAuth$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/HostAuth$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/accounts/HostAuth;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/accounts/HostAuth;
    .locals 0

    .line 239
    new-array p0, p1, [Lcom/samsung/android/knox/accounts/HostAuth;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/HostAuth$1;->newArray(I)[Lcom/samsung/android/knox/accounts/HostAuth;

    move-result-object p0

    return-object p0
.end method
