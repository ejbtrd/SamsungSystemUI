.class Lcom/samsung/android/knox/lockscreen/LSOAttributeSet$1;
.super Ljava/lang/Object;
.source "LSOAttributeSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .locals 0

    .line 936
    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 932
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .locals 0

    .line 942
    new-array p0, p1, [Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 932
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet$1;->newArray(I)[Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object p0

    return-object p0
.end method
