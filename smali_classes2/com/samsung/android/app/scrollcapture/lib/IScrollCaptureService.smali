.class public interface abstract Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;
.super Ljava/lang/Object;
.source "IScrollCaptureService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
