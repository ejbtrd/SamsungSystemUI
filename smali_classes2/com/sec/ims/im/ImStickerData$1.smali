.class Lcom/sec/ims/im/ImStickerData$1;
.super Ljava/lang/Object;
.source "ImStickerData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/im/ImStickerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/im/ImStickerData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/im/ImStickerData;
    .locals 0

    .line 439
    new-instance p0, Lcom/sec/ims/im/ImStickerData;

    invoke-direct {p0, p1}, Lcom/sec/ims/im/ImStickerData;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 431
    invoke-virtual {p0, p1}, Lcom/sec/ims/im/ImStickerData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/im/ImStickerData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/im/ImStickerData;
    .locals 0

    .line 449
    new-array p0, p1, [Lcom/sec/ims/im/ImStickerData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 431
    invoke-virtual {p0, p1}, Lcom/sec/ims/im/ImStickerData$1;->newArray(I)[Lcom/sec/ims/im/ImStickerData;

    move-result-object p0

    return-object p0
.end method
