.class Lcom/samsung/android/knox/application/AppInfo$1;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/application/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/application/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/application/AppInfo;
    .locals 0

    .line 60
    new-instance p0, Lcom/samsung/android/knox/application/AppInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/application/AppInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/AppInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/application/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/application/AppInfo;
    .locals 0

    .line 63
    new-array p0, p1, [Lcom/samsung/android/knox/application/AppInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/AppInfo$1;->newArray(I)[Lcom/samsung/android/knox/application/AppInfo;

    move-result-object p0

    return-object p0
.end method
