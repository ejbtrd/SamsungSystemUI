.class Lcom/samsung/android/knox/cmfa/AuthActionType$1;
.super Ljava/lang/Object;
.source "AuthActionType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/cmfa/AuthActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/cmfa/AuthActionType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/cmfa/AuthActionType;
    .locals 0

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/cmfa/AuthActionType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/cmfa/AuthActionType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/cmfa/AuthActionType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/cmfa/AuthActionType;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/cmfa/AuthActionType;
    .locals 0

    .line 36
    new-array p0, p1, [Lcom/samsung/android/knox/cmfa/AuthActionType;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/cmfa/AuthActionType$1;->newArray(I)[Lcom/samsung/android/knox/cmfa/AuthActionType;

    move-result-object p0

    return-object p0
.end method
