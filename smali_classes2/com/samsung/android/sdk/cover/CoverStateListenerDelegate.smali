.class Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
.super Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;
.source "CoverStateListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

.field private final mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    if-nez p2, :cond_0

    .line 36
    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    .line 39
    :goto_0
    new-instance p3, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    invoke-direct {p3, p2, p1}, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    return-void
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    return-object p0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCoverAttachStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v1, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
