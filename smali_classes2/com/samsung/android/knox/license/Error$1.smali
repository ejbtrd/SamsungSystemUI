.class Lcom/samsung/android/knox/license/Error$1;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/license/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/license/Error;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/license/Error;
    .locals 1

    .line 108
    new-instance p0, Lcom/samsung/android/knox/license/Error;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/license/Error;-><init>(Landroid/os/Parcel;Lcom/samsung/android/knox/license/Error$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/license/Error$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/license/Error;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/license/Error;
    .locals 0

    .line 112
    new-array p0, p1, [Lcom/samsung/android/knox/license/Error;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/license/Error$1;->newArray(I)[Lcom/samsung/android/knox/license/Error;

    move-result-object p0

    return-object p0
.end method
