.class Lcom/sec/ims/DialogEvent$1;
.super Ljava/lang/Object;
.source "DialogEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/DialogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/DialogEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/DialogEvent;
    .locals 1

    .line 100
    new-instance p0, Lcom/sec/ims/DialogEvent;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/DialogEvent;-><init>(Landroid/os/Parcel;Lcom/sec/ims/DialogEvent$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/sec/ims/DialogEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/DialogEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/DialogEvent;
    .locals 0

    .line 105
    new-array p0, p1, [Lcom/sec/ims/DialogEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/sec/ims/DialogEvent$1;->newArray(I)[Lcom/sec/ims/DialogEvent;

    move-result-object p0

    return-object p0
.end method
