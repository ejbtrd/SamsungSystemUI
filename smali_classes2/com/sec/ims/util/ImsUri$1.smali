.class Lcom/sec/ims/util/ImsUri$1;
.super Ljava/lang/Object;
.source "ImsUri.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/util/ImsUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/util/ImsUri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 426
    new-instance p0, Lcom/sec/ims/util/ImsUri;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/util/ImsUri;-><init>(Landroid/os/Parcel;Lcom/sec/ims/util/ImsUri$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 417
    invoke-virtual {p0, p1}, Lcom/sec/ims/util/ImsUri$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 437
    new-array p0, p1, [Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 417
    invoke-virtual {p0, p1}, Lcom/sec/ims/util/ImsUri$1;->newArray(I)[Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0
.end method
