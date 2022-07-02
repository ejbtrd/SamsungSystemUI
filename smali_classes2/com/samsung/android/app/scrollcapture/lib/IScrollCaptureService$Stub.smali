.class public abstract Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;
.super Landroid/os/Binder;
.source "IScrollCaptureService.java"

# interfaces
.implements Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 30
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    instance-of v1, v0, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
