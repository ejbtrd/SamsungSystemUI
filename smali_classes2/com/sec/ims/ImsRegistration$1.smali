.class Lcom/sec/ims/ImsRegistration$1;
.super Ljava/lang/Object;
.source "ImsRegistration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ImsRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/ImsRegistration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 326
    new-instance p0, Lcom/sec/ims/ImsRegistration;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/ImsRegistration;-><init>(Landroid/os/Parcel;Lcom/sec/ims/ImsRegistration$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 323
    invoke-virtual {p0, p1}, Lcom/sec/ims/ImsRegistration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 331
    new-array p0, p1, [Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 323
    invoke-virtual {p0, p1}, Lcom/sec/ims/ImsRegistration$1;->newArray(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method
