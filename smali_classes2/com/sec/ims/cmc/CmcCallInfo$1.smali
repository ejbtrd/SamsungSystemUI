.class Lcom/sec/ims/cmc/CmcCallInfo$1;
.super Ljava/lang/Object;
.source "CmcCallInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcCallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/cmc/CmcCallInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 1

    .line 72
    new-instance p0, Lcom/sec/ims/cmc/CmcCallInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/cmc/CmcCallInfo;-><init>(Landroid/os/Parcel;Lcom/sec/ims/cmc/CmcCallInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcCallInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 0

    .line 77
    new-array p0, p1, [Lcom/sec/ims/cmc/CmcCallInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcCallInfo$1;->newArray(I)[Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    return-object p0
.end method
