.class Lcom/sec/ims/IMSProfileParams$1;
.super Ljava/lang/Object;
.source "IMSProfileParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IMSProfileParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/IMSProfileParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/IMSProfileParams;
    .locals 0

    .line 90
    new-instance p0, Lcom/sec/ims/IMSProfileParams;

    invoke-direct {p0, p1}, Lcom/sec/ims/IMSProfileParams;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/sec/ims/IMSProfileParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/IMSProfileParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/IMSProfileParams;
    .locals 0

    .line 95
    new-array p0, p1, [Lcom/sec/ims/IMSProfileParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/sec/ims/IMSProfileParams$1;->newArray(I)[Lcom/sec/ims/IMSProfileParams;

    move-result-object p0

    return-object p0
.end method
